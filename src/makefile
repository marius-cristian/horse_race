#g++ -o3 -lm fft.cpp
#g++ biginteger.cpp -std=c++17 -lm -o bigint
CXX=g++
CXXFLAGS=-std=c++17 -Wextra -DNDEBUG -S

header-files:= $(wildcard *.h++)
implementations:= $(basename $(header-files))
time-tests:= $(addsuffix .time, $(implementations)) 
unittests:= $(addsuffix .test, $(implementations)) 

.PHONY: clean find unittest veryclean

N = 1024 32768 1048576 33554432

$(time-tests): %.time : %.h++
	@cp $*.h++ mul_optimisation1.h++
	$(CXX) $(CXXFLAGS) -DNAME=$* time_tests.c++
	@for n in $(N) ; do \
	  ./a.out $$n ; \
	done; \
	rm -f mul_optimisation1.h++ ./a.out 

TESTFLAGS=-O3 -std=c++17 -Wall -Wextra -x c++ -g -DDEBUG

#unittest: point.i++
#	$(CXX) $(TESTFLAGS) -DUNITTEST_POINT point.i++
#	./a.out
#	rm -f ./a.out 

#$(unittests): %.test : %.h++
#	@cp $*.h++ algorithm.h++
#	$(CXX) $(TESTFLAGS) -DNAME=$* test-driver.c++
#	./a.out
#	rm -f algorithm.h++ ./a.out 

# Other tools

clean:
	- rm  -f a.out temp algorithm.h++ 2>/dev/null

veryclean: clean
	- rm -f *~ */*~ 2>/dev/null

find:
	find . -type f -print -exec grep $(word) {} \; | less
