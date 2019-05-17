#!/bin/sh
g++ ex1-followup.cpp -o ex1-followup.o -std=c++11 -O2
./ex1-followup.o < ex1.in > ex1-followup-res.out
diff -s ex1-followup-res.out ex1-followup.out
