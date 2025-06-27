package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
	ginadapter "github.com/awslabs/aws-lambda-go-api-proxy/gin"
	"github.com/gin-gonic/gin"

	"github.com/huncholane/hygofit/api/globals"
	"github.com/huncholane/hygofit/api/routes"
)

var ginLambda *ginadapter.GinLambdaV2

func init() {
	globals.Init()
	r := routes.SetupRouter()
	r.Use(func(c *gin.Context) {
		fmt.Println("PATH:", c.Request.URL.Path)
	})
	ginLambda = ginadapter.NewV2(r)
}

func main() {
	lambda.Start(ginLambda.ProxyWithContext)
}
