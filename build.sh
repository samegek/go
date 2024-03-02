#!/bin/bash
set -e
set -x

if [ ! -d /tmp/build-golang/src/github.com/samegek ]; then
    mkdir -p /tmp/build-golang/src/github.com/samegek
    ln -s $PWD /tmp/build-golang/src/github.com/samegek/go
fi
export GOPATH=/tmp/build-golang
go get -u github.com/golang/dep/cmd/dep
cd /tmp/build-golang/src/github.com/samegek/go
exec $GOPATH/bin/dep ensure -update
