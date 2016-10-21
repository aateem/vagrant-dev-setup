#!/bin/bash

set -eux

echo "I am here --> `pwd`"

sudo apt-get update

for req in $(< requirements.txt);
do
    sudo apt-get install -y $req
done

rm .bashrc

if [ ! -d dotfiles ]; then
    git clone https://github.com/aateem/dotfiles.git
fi

pushd dotfiles
stow bash
stow vim
stow git

popd
vim +PluginInstall +qall

mkdir code
