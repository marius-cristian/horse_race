#include <typeinfo>
#include "integer.h++"
#include <iostream>

int main(){
	using namespace cphstl;
	multi_word_integer<64> x = 345;
	multi_word_integer<64> y = 511;
	multi_word_integer<64> z = x + y;
	//y = z - x;
	std::cout << x << " " << y << " " << z << "\n" ;
	//Z<3> t{3};
	//Z<3> u;
	//u = u - t;
	//if(u != -t) {
	//	assert( false ) ;
	//}	
	return 0;
}

	/*
	N<64> max(”18446744073709551615”) ; // 2^{64} − 156
	Z<9> a = 0;
	std::cout << int(sizeof(a) ) << ”\n” ;
	Z<32> b = 0;
	std::cout << int(sizeof(b) ) << ”\n” ;
	using integer = Z< 32 > ;
	integer c{5};
	std::cout << c << ”\n” ;
	two_word_integer< 16 > big;
	std::cout << int(sizeof(big) ) << ”\n” ;
	std::cout << big << ”\n” ;
	plain_natural< 32 > size{43};
	std::cout << int(sizeof(size) ) << ”\n” ;
	std::cout << size << ”\n” ;
	plain_integer<8> temperature{−41};
	std::cout << int(sizeof(temperature) ) << ”\n” ;
	std::cout << temperature << ”\n” ;
	//using T = cphstl::double_precision< int >::type;
	//T x;
	//std::cout << typeid(x) .name( ) << ’\n’ ;
	*/