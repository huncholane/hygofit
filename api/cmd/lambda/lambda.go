package main

import (
	"github.com/aws/aws-lambda-go/lambda"
	ginadapter "github.com/awslabs/aws-lambda-go-api-proxy/gin"

	"github.com/huncholane/hygofit/api/globals"
	"github.com/huncholane/hygofit/api/routes"
)

var ginLambda *ginadapter.GinLambda

func init() {
	globals.Init()
	r := routes.SetupRouter()
	ginLambda = ginadapter.New(r)
}

func main() {
	lambda.Start(ginLambda.ProxyWithContext)
}
