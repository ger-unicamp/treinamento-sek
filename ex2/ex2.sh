#!/bin/bash
g++ ex2.cpp -o ex2.o -std=c++11 -O2
./ex2.o < ex2.in > ex2-res.out
diff -s ex2.out ex2-res.out
