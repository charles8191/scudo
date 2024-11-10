#!/bin/bash
set -ex
curl -sO "https://android.googlesource.com/platform/external/scudo/+archive/refs/heads/main/standalone.tar.gz"
mkdir scudo
tar xf standalone.tar.gz -C scudo
rm standalone.tar.gz
cd scudo
g++ -fPIC -Iinclude -c *.cpp
g++ -shared -o libscudo.so *.o
cp -f libscudo.so /out
cd ..
