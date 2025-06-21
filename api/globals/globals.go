package globals

import (
	"log"
	"os"
	"strings"

	"github.com/jmoiron/sqlx"
	"github.com/joho/godotenv"
)

var (
	DB            *sqlx.DB
	ALLOWED_HOSTS []string
)

func Init() {
	godotenv.Load()
	var err error
	DB, err = sqlx.Connect("postgres", os.Getenv("DATABASE_URL"))
	if err != nil {
		log.Fatalln("DB connect failed:", err)
	}
	ALLOWED_HOSTS = strings.Split(os.Getenv("ALLOWED_HOSTS"), ",")
}
