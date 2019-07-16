#g++ -o main -I/mnt/c/Users/JP/cppunit/include/ -L/mnt/c/Users/JP/cppunit/src/cppunit/.libs/ main.cc TestComplexNumber.cc -lcppunit -ldl
#export LD_LIBRARY_PATH=/mnt/c/Users/JP/cppunit/src/cppunit/.libs/
#./main



CC=g++
LIBPATH = /mnt/c/Users/JP/cppunit/src/cppunit/.libs/
LIB=-L$(LIBPATH)
INC=-I/mnt/c/Users/JP/cppunit/include/
CFLAGS =-lcppunit -ldl 

main: main.cc TestComplexNumber.cc
	export LD_LIBRARY_PATH=$(LIBPATH)
	$(CC) -o main -Wall $(INC) $(LIB) main.cc TestComplexNumber.cc $(CFLAGS) 
