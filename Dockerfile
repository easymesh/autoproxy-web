FROM golang

RUN apt update && apt -y install gcc

ENV GOPATH=/go

WORKDIR /go/src/github.com/easymesh/autoproxy-web

COPY . .

RUN go build -ldflags="-w -s" -o proxyweb

FROM ubuntu:22.04

ENV BUILD_HOME=/go/src/github.com/easymesh/autoproxy-web

WORKDIR /bin/
COPY --from=0 $BUILD_HOME/config.json .
COPY --from=0 $BUILD_HOME/release.db  .
COPY --from=0 $BUILD_HOME/proxyweb    .

EXPOSE 8000

ENTRYPOINT ["/bin/proxyweb"]
