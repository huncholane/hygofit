package models

import (
	"math/rand/v2"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/golib/querytools"
	"github.com/huncholane/hygofit/api/globals"
)

type BlockStatement struct {
	MinDifficulty int
	MaxDifficulty int
	MinBlockSize  int
	MaxBlockSize  int
}

func BlockStatementFromContext(c *gin.Context) BlockStatement {
	minDifficulty, _ := querytools.QueryInt(c, "minDifficulty", 2)
	maxDifficulty, _ := querytools.QueryInt(c, "maxDifficulty", 3)
	minBlockSize, _ := querytools.QueryInt(c, "minBlockSize", 0)
	maxBlockSize, _ := querytools.QueryInt(c, "maxBlockSize", 10)
	return BlockStatement{
		MinDifficulty: minDifficulty,
		MaxDifficulty: maxDifficulty,
		MinBlockSize:  minBlockSize,
		MaxBlockSize:  maxBlockSize,
	}
}

type Rep struct {
	BlockId          int  `db:"block_id" json:"block_id"`
	RepId            int  `db:"rep_id" json:"rep_id"`
	Amount           *int `db:"amount" json:"amount"`
	Difficulty       int  `db:"difficulty" json:"difficulty"`
	Timed            bool `db:"timed" json:"timed"`
	Bodyweight       bool `db:"bodyweight" json:"bodyweight"`
	HighReps         bool `db:"highreps" json:"highReps"`
	Failure          bool `db:"failure" json:"failure"`
	BlockRepPosition int  `db:"blockrep_position" json:"blockRepPosition"`
	RepPartPosition  int  `db:"reppart_position" json:"repPartPosition"`
	BlockSize        int  `db:"block_size" json:"blockSize"`
}

func (bs BlockStatement) QueryReps() ([]Rep, error) {
	stmt := `
	WITH block_sizes AS (
		SELECT block.id AS block_id, COUNT(rep.id) AS size
		FROM block
		JOIN blockrep ON block.id = blockrep.block
		JOIN rep ON rep.id = blockrep.rep
		GROUP BY block.id
	)
	SELECT
		block.id AS block_id,
		rep.id AS rep_id,
		blockrep.position AS blockrep_position,
		reppart.position AS reppart_position,
		reppart.amount,
		block.difficulty,
		block.timed,
		block.bodyweight,
		block.highreps,
		block_sizes.size AS block_size,
		block.failure
	FROM block
	JOIN block_sizes ON block.id = block_sizes.block_id
	JOIN blockrep ON block.id=blockrep.block
	JOIN rep ON rep.id=blockrep.rep
	JOIN reppart ON rep.id=reppart.rep
	WHERE block.difficulty <= $1
		AND block.difficulty >= $2
		AND block_sizes.size <= $3
		AND block_sizes.size >= $4
	ORDER BY block.id,blockrep.position,reppart.position;`
	var reps []Rep
	err := globals.DB.Select(&reps, stmt, bs.MaxDifficulty, bs.MinDifficulty, bs.MaxBlockSize, bs.MinBlockSize)
	return reps, err
}

type Block struct {
	Difficulty int      `json:"difficulty"`
	HighReps   bool     `json:"highReps"`
	Timed      bool     `json:"timed"`
	Failure    bool     `json:"failure"`
	Bodyweight bool     `json:"bodyweight"`
	Size       int      `json:"size"`
	Sets       [][]*int `json:"sets"`
}

type Blocks []Block

type BlockMap struct {
	Timed      Blocks
	Failure    Blocks
	Bodyweight Blocks
	HighReps   Blocks
	Normal     Blocks
}

func (b Blocks) Map() BlockMap {
	var bm BlockMap
	for _, block := range b {
		if block.Timed {
			bm.Timed = append(bm.Timed, block)
		} else if block.HighReps {
			bm.HighReps = append(bm.HighReps, block)
		} else if block.Bodyweight {
			bm.Bodyweight = append(bm.Bodyweight, block)
		} else if block.Failure {
			bm.Failure = append(bm.Failure, block)
		} else {
			bm.Normal = append(bm.Normal, block)
		}
	}
	return bm
}

func (b Blocks) Shuffle() Blocks {
	rand.Shuffle(len(b), func(i, j int) {
		b[i], b[j] = b[j], b[i]
	})
	return b
}

func (b Blocks) Random() Block {
	if len(b) == 0 {
		return Block{}
	}
	return b[rand.IntN(len(b))]
}

func (bs BlockStatement) QueryBlocks() (Blocks, error) {
	var blocks Blocks
	reps, err := bs.QueryReps()
	if err != nil {
		return nil, err
	}
	lastBlockId := -1
	lastSetPos := -1
	for _, rep := range reps {
		if rep.BlockId != lastBlockId {
			blocks = append(blocks, Block{
				Difficulty: rep.Difficulty,
				HighReps:   rep.HighReps,
				Timed:      rep.Timed,
				Failure:    rep.Failure,
				Bodyweight: rep.Bodyweight,
				Size:       rep.BlockSize,
				Sets:       [][]*int{},
			})
			lastBlockId = rep.BlockId
		}
		i := len(blocks) - 1
		if rep.BlockRepPosition != lastSetPos {
			blocks[i].Sets = append(blocks[i].Sets, []*int{})
			lastSetPos = rep.BlockRepPosition
		}
		j := len(blocks[i].Sets) - 1
		blocks[i].Sets[j] = append(blocks[i].Sets[j], rep.Amount)
	}
	return blocks, nil
}
