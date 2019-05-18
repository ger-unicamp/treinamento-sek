g++ ex4.cpp -o ex4.o -std=c++11 -O2
./ex4.o < ex4.in > ex4.res
cmp -s ex4.out ex4.res
if [ $? -eq 0 ];
then echo "Correto"
else
	echo "Incorreto"
	diff ex4.out ex4.res
fi
