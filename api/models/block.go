package models

import (
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

type Block struct{}

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
}

func (bs BlockStatement) QueryReps() ([]Rep, error) {
	stmt := `
	WITH block_sizes AS (
		SELECT block.id AS block_id, COUNT(reppart.id) AS size
		FROM block
		JOIN blockrep ON block.id = blockrep.block
		JOIN rep ON rep.id = blockrep.rep
		JOIN reppart ON rep.id = reppart.rep
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
		block.failure
	FROM block
	JOIN block_sizes ON block.id = block_sizes.block_id
	JOIN blockrep ON block.id=blockrep.block
	JOIN rep ON rep.id=blockrep.rep
	JOIN reppart ON rep.id=reppart.rep
	WHERE block.difficulty <= $1
		AND block.difficulty >= $2
		AND block_sizes.size <= $3
		AND block_sizes.size >= $4;`
	var reps []Rep
	err := globals.DB.Select(&reps, stmt, bs.MaxDifficulty, bs.MinDifficulty, bs.MaxBlockSize, bs.MinBlockSize)
	return reps, err
}

// func (bs BlockStatement) QueryBlocks([]Block, error) {
// 	reps, err := bs.QueryReps()
// }
