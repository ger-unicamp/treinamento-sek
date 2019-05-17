#!/bin/sh
g++ ex1.cpp -o ex1.o -std=c++11 -O2
./ex1.o < ex1.in > ex1.res
cmp -s ex1.out ex1.res
if [ $? -eq 0 ];
then echo "Correto"
else
  echo "Incorreto"
  diff ex1.out ex1.res
fi
