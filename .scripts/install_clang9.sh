#!/bin/bash

sudo apt update
sudo apt upgrade

#Install some utilities
sudo apt install build-essential xz-utils curl

#Download from Clang Releases
curl -SL http://releases.llvm.org/9.0.0/clang%2bllvm-9.0.0-x86_64-linux-gnu-ubuntu-18.04.tar.xz | tar -xJC .

#Set clang as local
mv clang+llvm-9.0.0-x86_64-linux-gnu-ubuntu-18.04 clang_9.0.0
sudo mv clang_9.0.0 /usr/local

#Add this to .bashrc or .zshrc
# export PATH=/usr/local/clang_9.0.0/bin:$PATH
# export LD_LIBRARY_PATH=/usr/local/clang_9.0.0/lib:$LD_LIBRARY_PATH

