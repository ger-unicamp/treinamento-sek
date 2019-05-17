#!/bin/bash
g++ ex3.cpp -o ex3.o -std=c++11 -O2
./ex3.o < ex3.in > ex3.res
cmp -s ex3.res ex3.out
if [ $? -eq 0 ];
then echo "Correto"
else
  echo "Incorreto"
  diff ex3.res ex3.out
fi
