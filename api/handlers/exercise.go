package handlers

import (
	"fmt"
	"strconv"
	"strings"

	"github.com/gin-gonic/gin"
	"github.com/huncholane/hygofit/api/globals"
	_ "github.com/lib/pq"
)

func QueryInt(c *gin.Context, key string, def int) (int, error) {
	val := c.Query(key)
	num, err := strconv.Atoi(val)
	if err != nil {
		return def, err
	}
	return num, nil
}

func QueryList(c *gin.Context, key string, def []string) []string {
	val := c.Query(key)
	return strings.Split(val, ",")
}

type OrderByField struct {
	Dir   string
	Field string
}

type OrderBy struct {
	Fields []OrderByField
}

func (ob OrderBy) SqlStmt() string {
	if len(ob.Fields) == 0 {
		return ""
	}
	stmt := "ORDER BY "
	for _, field := range ob.Fields {
		stmt += fmt.Sprintf("%s %s,", field.Field, field.Dir)
	}
	return stmt[:len(stmt)-1]
}

func (ob *OrderBy) Append(field OrderByField) {
	ob.Fields = append(ob.Fields, field)
}

func OrderByFromString(allowed_fields map[string]struct{}, s string) OrderBy {
	ob := OrderBy{}
	for _, raw := range strings.Split(s, ",") {
		dir := "ASC"
		if raw[0] == '-' {
			raw = raw[1:]
			dir = "DESC"
		}
		if _, exists := allowed_fields[raw]; exists {
			ob.Append(OrderByField{Field: raw, Dir: dir})
		}
	}
	return ob
}

// QueryOrderBy returns a direction and field name using default direction and default field to fall back on.
// Uses order_by query param or def if the query param does not exist.
// Each field must exist in allowed_fields and a dash (-) implies descending.
// Returns an OrderBy instance wich has the SqlStmt function.
func QueryOrderBy(c *gin.Context, allowed_fields map[string]struct{}, def string) OrderBy {
	if c.Query("order_by") == "" {
		return OrderByFromString(allowed_fields, def)
	}
	return OrderByFromString(allowed_fields, c.Query("order_by"))
}

func QueryInToSql(c *gin.Context, prefix, db_field, query_field, def string) string {
	s := c.Query(query_field)
	if s == "" {
		s = def
	}
	if s == "all" {
		return ""
	}
	vals := strings.Split(s, ",")

	// Prevent SQL injection by escaping single quotes
	for i, v := range vals {
		vals[i] = "'" + strings.ReplaceAll(v, "'", "''") + "'"
	}

	stmt := fmt.Sprintf("%s %s IN (%s)", prefix, db_field, strings.Join(vals, ", "))
	return stmt
}

type Exercise struct {
	ID         int    `db:"id"`
	Name       string `db:"name"`
	Target     string `db:"target"`
	Focus      string `db:"focus"`
	Equipment  string `db:"equipment"`
	Force      string `db:"force"`
	Experience string `db:"experience"`
	Views      int    `db:"views"`
	Url        string `db:"url"`
}

var ExerciseFieldSet = map[string]struct{}{
	"id":         {},
	"name":       {},
	"target":     {},
	"focus":      {},
	"equipment":  {},
	"force":      {},
	"experience": {},
	"views":      {},
	"url":        {},
}

func GetExercises(c *gin.Context) {
	limit, _ := QueryInt(c, "limit", 50)
	min_views, _ := QueryInt(c, "min_views", 1000000)
	order_by := QueryOrderBy(c, ExerciseFieldSet, "-views")
	target := QueryInToSql(c, "AND", "muscle.name", "target", "all")
	focus := QueryInToSql(c, "AND", "focus.name", "focus", "all")
	equipment := QueryInToSql(c, "AND", "equipment.name", "equipment", "all")
	force := QueryInToSql(c, "AND", "force.name", "force", "all")
	experience := QueryInToSql(c, "AND", "experience.name", "experience", "all")

	var exercises []Exercise

	err := globals.DB.Select(&exercises, `SELECT
			exercise.id,
			exercise.name,
			muscle.name AS target,
			focus.name AS focus,
			equipment.name AS equipment,
			force.name AS force,
			experience.name AS experience,
			exercise.views,
			exercise.url
		FROM exercise
		LEFT JOIN muscle ON target_id=muscle.id 
		LEFT JOIN focus ON exercise.focus_id=focus.id
		LEFT JOIN equipment ON exercise.equipment_id=equipment.id
		LEFT JOIN force ON exercise.force_id=force.id
		LEFT JOIN experience ON exercise.experience_id=experience.id
		WHERE views>=$1
		`+target+`
		`+focus+`
		`+equipment+`
		`+force+`
		`+experience+`
		`+order_by.SqlStmt()+`
		LIMIT $2
		;`, min_views, limit)
	if err != nil {
		fmt.Println("Error:", err)
		c.JSON(500, gin.H{"message": "Database error"})
		return
	}

	c.JSON(200, exercises)
}
