# [https://hygofit.com](Hygofit)

A workout generation website inspired by Arnold Shwarzeneggar's workout encyclopedia.

## Tech Stack

Hygofit is built using a webscraper written in golang using simple regular expressions from
[https://www.muscleandstrength.com/exercises](Muscle and Strength). Then the exercises and
rep styles are stored into a postgres database using the custom migrations folder. Then the api
is written using gin with an adapter for AWS lambda hosted as a lambda function served by API Gateway.
The frontend is a next js static build served through AWS s3. The frontend and backend use a shared
cloudfront distribution which avoids cors issues. The api and frontend are built using AWS codebuild
and a custom alpine docker build image containing psql, golang, node, npm, aws-cli, and zip.
During the postbuild step, the frontend and lambda s3 buckets are synchronized and
the cache is invalidated for cloudfront.
