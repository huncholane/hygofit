FROM alpine:3.22.0

RUN apk add --no-cache \
  postgresql17=17.5-r0 \
  go=1.24.4-r0 \
  nodejs=22.16.0-r2 \
  aws-cli=2.27.25-r0 \
  npm=11.3.0-r0 \
  openssh=10.0_p1-r7 \
  zip=3.0-r13 \
  && rm -rf /var/cache/apk/*
