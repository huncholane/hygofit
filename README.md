# [Hygofit](https://hygofit.com)

A workout generation website inspired by Arnold Shwarzeneggar's workout encyclopedia.

## Tech Stack

Hygofit is built using a webscraper written in golang with simple regular expressions to parse exercises from
[Muscle and Strength](https://www.muscleandstrength.com/exercises). Then the exercises along with custom reusable
workout patterns are stored into a postgres database using scripts in the migrations folder. The api
is written using gin with an adapter for AWS lambda hosted as a lambda function served by API Gateway.
The frontend is a next js static build served through AWS s3. The frontend and backend use a shared
cloudfront distribution which avoids cors issues. The api and frontend are built using AWS codebuild
and a [custom alpine docker](https://hub.docker.com/repository/docker/huncholane/hygofit-build/general) build image containing psql, golang, node, npm, aws-cli, and zip.
During the postbuild step, the frontend and lambda s3 buckets are synchronized and
the cache is invalidated for cloudfront.

## Environment Variables

### API

- **DATABASE_URL:** The postgres url including database name
- **ALLOWED_HOSTS:** A comma separated list of hosts to allow for cors. Make sure to include http or https

### Frontend

- **NEXT_PUBLIC_API_URL:** The api root url

### Databse

- **DATABASE_HOST:** The postgres database host
- **DATABASE_USER:** User to login with on postgres
- **DATABASE_PASSWORD:** Login password for postgres
- **DATABASE_TABLE:** Table used for migrations
- **DATABASE_PORT:** The port of the postgres instance
