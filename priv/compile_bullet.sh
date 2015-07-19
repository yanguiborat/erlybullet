#!/bin/bash

echo Compiling Bullet
cd deps/bullet/build3
./premake4_osx gmake
cd gmake
make