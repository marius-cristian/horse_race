#if not defined(MAXSIZE)
#define MAXSIZE 120000 // 120000 max size that works atm
#endif

#define REPETITIONS 3

#include <cstdlib> // std::atoi std:.rand
#include <cmath> // std::sqrt
#include <ctime> // std::clock_t std::clock CLOCKS_PER_SEC
#include <iostream> // std::cout std::cerr
#include <iterator> // std::iterator_traits
#include <typeinfo>
#include <random>


#include "karatsuba.cpp"
#include "mul_optimisation1.cpp"
#include "initial_naive.cpp"
//#include "./bigint/BigIntegerLibrary.hh"

string generate(int m) {
  
  std::random_device rd;     // only used once to initialise (seed) engine
  std::mt19937 rng(rd());    // random-number engine used (Mersenne-Twister in this case)
  std::uniform_int_distribution<int> uni(0,9); // guaranteed unbiased

  auto random_integer = uni(rng);
  string res;
  char c='0'+(random_integer);
  res =string()+c;
  for (int q = 0; q < m; ++q) {
    random_integer=uni(rng);
    c='0'+(random_integer);
    res+=c;
  }
  return res;
}

void usage(char const* program) {
  std::cerr << "Usage: " << program << " <N>\n";
  exit(1);
}

int main(int argc, char** argv) {
  unsigned long N = 15;
  if (argc == 2) {
    N = std::atoi(argv[1]);
  }
  else {
    usage(argv[0]);
  }
  if (N > MAXSIZE) {
    std::cerr << "N out of bounds [0.." << MAXSIZE << "]\n";
    usage(argv[0]);
  }
  

  
#if defined(REPETITIONS)
  unsigned long const repetitions = REPETITIONS;
#else
  unsigned long const repetitions = MAXSIZE / N;
#endif
//unsigned long const repetitions=10;
string a;
string b;

for (int i=0;i<8000;i+=40){
  a=generate(i);
  b=generate(i);

  std::clock_t start = std::clock();
  for (volatile unsigned long t = 0; t < repetitions; ++t)  {
    //vector<uint16_t>n1= inputToVector(a);
    //vector<uint16_t>n2=inputToVector(b);
    //vector<uint16_t>r=mul_1(n1,n2);
    //multiply_big(a,b);
    //BigInteger f = stringToBigInteger(a);
    //BigInteger ff = stringToBigInteger(b);
    //f*ff;
    mult(a,b);

  }
  std::clock_t stop = std::clock();
  
//#if not defined(NDEBUG)
//  // check the answers; how?
//#endif
  
  double t = double(repetitions) * double(N);  
  double ns = 1000000000.0 * double(stop - start) / double(CLOCKS_PER_SEC);
  std::cout.precision(4);
  std::cout << i << '\t' << ns / t << std::endl;
}

  return 0;
}