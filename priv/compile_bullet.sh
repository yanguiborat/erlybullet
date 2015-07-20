#!/bin/bash

echo Compiling Bullet from `pwd`

if [ -f ./deps/bullet3 ]
then
    echo Found previous bullet installation, skipping download.

    else
    echo Fetching Bullet to `pwd`
    mkdir -p deps
    git clone https://github.com/bulletphysics/bullet3.git
    mv bullet3 deps/
fi


cd ./deps/bullet3/build3
./premake4_osx gmake
cd gmake
make