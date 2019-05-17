#!/bin/sh
g++ ex1-followup.cpp -o ex1-followup.o -std=c++11 -O2
./ex1-followup.o < ex1.in > ex1-followup.res
cmp -s ex1-followup.res ex1-followup.out
if [ $? -eq 0 ];
then echo "Correto"
else
  echo "Incorreto"
  diff ex1-followup.res ex1-followup.out
fi
