#!/bin/bash
gcc hello.c -o hello
IMG_TAG=sanguohot/clang-hello:1.0
from_path=$PWD
dockerfile_path=$(cd `dirname $0`;pwd)
cd $dockerfile_path
docker build . -t ${IMG_TAG}
docker push ${IMG_TAG}
cd $from_path
