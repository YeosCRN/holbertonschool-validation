#!/bin/bash
apt update && apt upgrade -y
apt install -y wget make dpkg
curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b $(go env GOPATH)/bin
dpkg -i hugo_binary.deb
rm hugo_binary.deb
make build