#!/bin/sh
set -ex

cd xmrig
rm -rf build
mkdir build
cd build

cmake ..
LD_RUN_PATH=lib make

mkdir lib
cp /usr/lib/x86_64-linux-gnu/libuv.so.1 lib

rm ../.gitignore || true