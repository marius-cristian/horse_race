#g++ -o3 -lm fft.cpp
#g++ biginteger.cpp -std=c++17 -lm -o bigint
CXX=g++
CXXFLAGS=-O3 -std=c++17 -Wall -Wextra -DNDEBUG

header-files:= $(wildcard *.h++)
implementations:= $(basename $(header-files))
time-tests:= $(addsuffix .time, $(implementations)) 
unittests:= $(addsuffix .test, $(implementations)) 

.PHONY: clean find unittest veryclean

#$(time-tests): %.time : %.h++
#	@cp $*.h++ algorithm.h++
#	$(CXX) $(CXXFLAGS) -DNAME=$* driver.c++
#	@for n in $(N) ; do \
#	  ./a.out $$n ; \
#	done; \
#	rm -f algorithm.h++ ./a.out 

TESTFLAGS=-O3 -std=c++17 -Wall -Wextra

unittest: fft.cpp
	$(CXX) $(TESTFLAGS) fft.cpp
	./a.out
	rm -f ./a.out 

$(unittests): %.test : %.h++
	@cp $*.h++ #algorithm.h++
	$(CXX) $(TESTFLAGS) -DNAME=$* fft.cpp
	./a.out
	rm -f algorithm.h++ ./a.out 

# Other tools

clean:
	- rm  -f a.out temp algorithm.h++ 2>/dev/null

veryclean: clean
	- rm -f *~ */*~ 2>/dev/null

find:
	find . -type f -print -exec grep $(word) {} \; | less
