#!/bin/bash
set -e
source buildspec/global.sh

echo "Udating the frontend"
aws s3 sync frontend/out s3://hygofit.frontend --delete >/dev/null
aws cloudfront create-invalidation \
	--distribution-id EW5HTNW91HAGP \
	--paths "/*" >/dev/null

echo "Updating the lambda function"
aws s3 cp api/lambda.zip s3://hygofit.api >/dev/null
aws lambda update-function-code \
	--function-name hygofitApi \
	--s3-bucket hygofit.api \
	--s3-key lambda.zip >/dev/null
