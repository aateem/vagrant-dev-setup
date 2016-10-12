#!/bin/bash

set -eux

default_dw_link="https://storage.googleapis.com/golang/go1.7.1.linux-amd64.tar.gz"

latest_go_version=${LATEST_GO_DW_LINK:-${default_dw_link}}

src_arch_name=go_src
wget ${latest_go_version} -O ${src_arch_name}

sudo tar -C /usr/local -xzf ${src_arch_name}

go_code_path=${HOME}/code/go
mkdir -p ${go_code_path}
echo 'export GOPATH=$HOME/code/go' >> ${HOME}/.profile
echo 'export PATH=$PATH:/usr/local/go/bin' >> ${HOME}/.profile
echo 'export PATH=$PATH:'"$go_code_path"'/bin' >> ${HOME}/.profile
