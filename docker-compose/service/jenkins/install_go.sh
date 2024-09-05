#!/bin/bash
GO_VERSION=go1.23.0.linux-amd64
GO_HOME=~/go_home
wget https://go.dev/dl/${GO_VERSION}.tar.gz && \
rm -rf ${GO_HOME}/go && \
mkdir ${GO_HOME} && \
tar -C ${GO_HOME} -xzf ${GO_VERSION}.tar.gz && \
echo "export PATH=$PATH:${GO_HOME}/go/bin" > ~/.bashrc && \
source ~/.bashrc && \
go version && \
rm -rf ${GO_VERSION}.tar.gz