export CGO_ENABLED=1
export GARCH=$(go env GOARCH)
export GOS=$(go env GOOS)

go build -ldflags="-w -s" -o proxyweb
tar -zcf proxyweb_$GOS_$GARCH.tar.gz proxyweb release.db config.json
