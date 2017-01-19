CC = icc
LIBLDIR= 

#include
INCLUDE= -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include 

#flags
LIB= -lglib-2.0 -lpthread -lm -vec-report7

SEQCFLAGS= $(INCLUDE) -O3 -Wall -Wextra -xAVX -D_BSD_SOURCE -std=c99 
CFLAGS= $(INCLUDE)  -qopenmp -openmp-report7 -O3 -Wall -Wextra -xAVX -D_BSD_SOURCE -std=c99 
DEBUGFLAGS=  $(INCLUDE) -qopenmp -g -ggdb -O3 -Wall -Wextra -xAVX -D_BSD_SOURCE -std=c99 

nomkl: olap_search.o query1_no_mkl.o
	$(CC) $(CFLAGS) olap_search.c query1_no_mkl.c -o query1_no_mkl $(LIB) 

nomklver: olap_search.o query1_no_mkl.o
	$(CC) $(CFLAGS) -DD_VERBOSE olap_search.c query1_no_mkl.c -o query1_no_mkl $(LIB) 

seqnomklver: olap_search.o query1_no_mkl.o
	$(CC) $(SEQCFLAGS) -DD_VERBOSE olap_search.c query1_no_mkl.c -o query1_no_mkl $(LIB) 

nomkldebug: olap_search.o query1_no_mkl.o
	$(CC) $(DEBUGFLAGS) olap_search.c query1_no_mkl.c -o query1_no_mkl $(LIB) 

nomkldebugver: olap_search.o query1_no_mkl.o
	$(CC) $(DEBUGFLAGS) -DD_VERBOSE -DD_DEBUGGING olap_search.c query1_no_mkl.c -o query1_no_mkl $(LIB) 

.PHONY: clean
clean:
	rm  *.o query1_no_mkl 
