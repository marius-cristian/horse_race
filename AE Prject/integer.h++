//g++ biginteger.cpp -std=c++17 -o biginteger

# ifndef __CPHSTL_INTEGER__
#define __CPHSTL_INTEGER__

#include <cassert> // assert macro
#include <cmath> // std::log10
#include <limits> // std::numeric_limits
#include <cstddef> // std::size_t
#include <iostream> // std streams
#include <string> // std::string
#include <type_traits> // std type traits
#include <utility> // std::move

namespace unnamed {

/* §0 */

// metaprogramming aids

template<typename... Typepack>
class typelist {
};

template<bool B, typename T, typename F>
class if_mp {
public :

using type = T;

};

template<typename T, typename F>
class if_mp< false , T, F> {
public :

using type = F;


};

template<std::size_t, typename L>
class find_first_mp;

template<std::size_t b, template<typename...> class L>
class find_first_mp< b, L<>> {
public :

using type = void;

};

template<std::size_t b, template<typename...> class L, typename

Head, typename... Tail>
class find_first_mp< b, L<Head, Tail...>> {
public :

using byte = unsigned char;
static constexpr std::size_t bits_per_byte = std::numeric_limits
<byte>::digits;
using rest = L<Tail... > ;
using type = typename std::conditional<b <= bits_per_byte *
sizeof(Head) , Head, typename unnamed::find_first_mp< b, rest
>::type>::type;

};

/*
This class has
integer kernel
realized using
class given as
no data members. It can be used as the base of an
to make the kernel smaller.All operations are
the member functions available in the derived
a template argument.
*/

template<typename K>
class full_interface {
private :

using kernel_type = K;
using self_type = full_interface<K> ;

constexpr K const* down_cast(self_type const* const base_pointer)
const {
return static_cast <K const* > (base_pointer) ;
}

constexpr K* down_cast(self_type* const base_pointer) const {
return static_cast <K* > (base_pointer) ;
}

public :

// comparison operators

bool operator> (K const& other) const {
return other < *down_cast(this) ;
}

bool operator !=(K const& other) const {
return not (*down_cast(this) == other) ;
}

bool operator<=(K const& other) const {
return not (other < *down_cast(this) ) ;
}

bool operator>=(K const& other) const {
return not (*down_cast(this) < other) ;
}

// unary operators

K operator-( ) const {
K v = *down_cast(this) ;
return compl v + K() ;
}

K operator+( ) const {
return *down_cast(this) ;
}

K& operator++( ) { // pre-increment
*down_cast(this) = *down_cast(this) + K() ;
return *down_cast(this) ;
}

K operator++(int) { // post-increment
K current(*down_cast(this) ) ;
operator++( ) ;
return current;
}

K& operator--( ) { // pre-decrement
	*down_cast(this) = *down_cast(this) - K() ;
	return *down_cast(this) ;
}

K operator--(int) { // post-decrement
K current(*down_cast(this) ) ;
operator--( ) ;
return current;
}

// binary operators

K operator-(K const& other) const {
return *down_cast(this) + (- other) ;
}

// compound assignments

K& operator += (K const& other) {
*down_cast(this) = *down_cast(this) + other;
return *down_cast(this) ;
}

K& operator -= (K const& other) {
*down_cast(this) = *down_cast(this) - other;
return *down_cast(this) ;
}

K& operator*=(K const& other) {
*down_cast(this) = *down_cast(this) * other;
return *down_cast(this) ;
}

K& operator /=(K const& other) {
*down_cast(this) = *down_cast(this) / other;
return *down_cast(this) ;
}

K& operator%=(K const& other) {
*down_cast(this) = *down_cast(this) % other;
return *down_cast(this) ;
}

K& operator&=(K const& other) {
*down_cast(this) = *down_cast(this) & other;
return *down_cast(this) ;
}

K& operator|=(K const& other) {
*down_cast(this) = *down_cast(this) | other;
return *down_cast(this) ;
}

K& operator^=(K const& other) {
*down_cast(this) = *down_cast(this) ^ other;
return *down_cast(this) ;
}

// bitwise operators

K operator~ ( ) const {
K copy = *down_cast(this) ;
using I = typename K::iterator;
for (I i = copy.begin( ) ; i != copy.end( ) ; ++i) {
*i = compl *i;
}
return copy;
}

};

}

/* §1 */

namespace cphstl {
template<std::size_t b>
class plain_natural : public unnamed::full_interface<plain_natural<b>> {

static constexpr std::size_t max_width = std::numeric_limits<
unsigned long long>::digits;
static_assert(b != 0 , "b must be larger than 0") ;
static_assert(b <= max_width, "b too large for this type") ;

private :

using unsigned_types = unnamed::typelist<unsigned char, unsigned
short, unsigned int , unsigned long, unsigned long long> ;
using T = typename unnamed::find_first_mp< b, unsigned_types>::type;

T a;

static constexpr T complement(T c) noexcept {
return ~ c;
}

public :

// associated types

using self_type = plain_natural<b> ;
using word_type = T;
using size_type = std::size_t;
using iterator = T*;
using const_iterator = T const*;

// constants

static constexpr size_type digits = b;
static constexpr bool is_signed = false ;
static constexpr bool is_integer = true;
static constexpr bool is_exact = true;
static constexpr size_type radix = 2;
static constexpr bool is_bounded = true;
static constexpr bool is_modulo = not is_signed;

static constexpr cphstl::plain_natural<b> min( ) noexcept {
return cphstl::plain_natural<b> ( ) ;
}

static constexpr cphstl::plain_natural<b> max( ) noexcept {
return complement(T( )) ;
}

// iterators

const_iterator begin( ) const {
return &a;
}

iterator begin( ) {
return &a;
}

const_iterator end( ) const {
return &a + 1;
}

iterator end( ) {
return &a + 1;
}

// size

static constexpr size_type size( ) { // in words
return 1;
}

static constexpr size_type width( ) { // in bits
return b;
}

// structors

constexpr explicit plain_natural( )
: a(T(0) ) {
}

template<typename Integer>
plain_natural(Integer value)
: a(T(value) ) {
// Does not work; cut the extra bits away
}

plain_natural(plain_natural<b> const& ) = default ;

plain_natural(plain_natural<b>&&) = default ;

// assignments

template<typename Integer>
plain_natural<b> & operator =(Integer const& value) {
// Does not work; cut the extra bits away
a = T(value) ;
return *this ;
}

plain_natural<b> & operator =(plain_natural<b> const& ) =
default ;

plain_natural<b> & operator =(plain_natural<b>&&) = default ;

// representation

std::string to_string( ) const {
return std::to_string(a) ;
}

// comparison operators

bool operator ==(plain_natural<b> const& other) const {
return a == other.a;
}

bool operator< (plain_natural<b> const& other) const {
return a < other.a;
}

// unary operators

plain_natural<b> operator~ ( ) const {
T copy = a;
copy = compl copy;
return plain_natural<b> (copy) ;
}

// binary operators

plain_natural<b> operator+(plain_natural<b> const& other) {
return plain_natural<b> (a + other.a) ;
}

plain_natural<b> operator*(plain_natural<b> const& other) {
return plain_natural<b> (a * other.a) ;
}

plain_natural<b> operator/(plain_natural<b> const& other) {
return plain_natural<b> (a / other.a) ;
}

plain_natural<b> operator% (plain_natural<b> const& other) {
return plain_natural<b> (a % other.a) ;
}

// bitwise operators

plain_natural<b> operator& (plain_natural<b> const& other) {
T tmp = a bitand other.a;
return plain_natural<b> (tmp) ;
}

plain_natural<b> operator| (plain_natural<b> const& other) {
T tmp = a bitor other.a;
return plain_natural<b> (tmp) ;
}

plain_natural<b> operator^(plain_natural<b> const& other) {
T tmp = a xor other.a;
return plain_natural<b> (a) ;
}

// shift operators

template<typename Integer>
plain_natural<b> operator<<(Integer delta) {
return plain_natural<b> (a << delta) ;
}

template<typename Integer>
plain_natural<b> operator>>(Integer delta) {
return plain_natural<b> (a >> delta) ;
}

};

template<std::size_t b>
class plain_integer
: public unnamed::full_interface<plain_integer<b>> {

static constexpr std::size_t max_width = std::numeric_limits<
unsigned long long>::digits;
static_assert(b != 0 , "b must be larger than 0") ;
static_assert(b <= max_width, "b too large for this type") ;

private :

using signed_types = unnamed::typelist<signed char, short, int ,
long, long long> ;
using T = typename unnamed::find_first_mp< b, signed_types>::
type;

T a;

public :

// associated types

using self_type = plain_integer<b> ;
using word_type = T;
using size_type = std::size_t;
using iterator = T*;
using const_iterator = T const*;

// constants

static constexpr size_type digits = b - 1;
static constexpr bool is_signed = true;
static constexpr bool is_integer = true;
static constexpr bool is_exact = true;
static constexpr size_type radix = 2;
static constexpr bool is_bounded = true;
static constexpr bool is_modulo = not is_signed;

static constexpr cphstl::plain_integer<b> min( ) noexcept {
return cphstl::plain_integer<b> (1) << digits;
}

static constexpr cphstl::plain_integer<b> max( ) noexcept {
return ~ min( ) ;
}

// iterators

const_iterator begin( ) const {
return &a;
}

iterator begin( ) {
return &a;
}

const_iterator end( ) const {
return &a + 1;
}

iterator end( ) {
return &a + 1;
}

// size

static constexpr size_type size( ) { // in words
return 1;
}

static constexpr size_type width( ) { // in bits
return b;
}

// structors

constexpr explicit plain_integer( )
: a(T(0) ) {
}

template<typename Integer>
plain_integer(Integer value)
: a(T(value) ) {
// Does not work! Cut the extra
}

plain_integer(plain_integer<b> const& ) = default ;

plain_integer(plain_integer<b>&&) = default ;

// assignments

template<typename Integer>
plain_integer<b> & operator =(Integer const& value) {
// Does not work! Cut the extra
a = T(value) ;
return *this ;
}

plain_integer<b> & operator =(plain_integer<b> const& ) =
default ;

plain_integer<b> & operator =(plain_integer<b>&&) = default ;

// representation

std::string to_string( ) const {
return std::to_string(a) ;
}

// comparison operators

bool operator ==(plain_integer<b> const& other) const {
return a == other.a;
}

bool operator< (plain_integer<b> const& other) const {
return a < other.a;
}

// unary operators

plain_integer<b> operator~ ( ) const {
plain_integer<b> copy = *this ;
copy.a = compl copy.a;
return copy;
}

// binary operators

plain_integer<b> operator+(plain_integer<b> const& other)
const {
return plain_integer<b> (a + other.a) ;
}

plain_integer<b> operator-(plain_integer<b> const& other)
const {
return plain_integer<b> (a - other.a) ;
}

plain_integer<b> operator*(plain_integer<b> const& other)
const {
return plain_integer<b> (a * other.a) ;
}

plain_integer<b> operator/(plain_integer<b> const& other)
const {
return plain_integer<b> (a / other.a) ;
}

template<typename Integer>
plain_integer<b> operator<<(Integer delta) {
return plain_integer<b> (a << delta) ;
}

template<typename Integer>
plain_integer<b> operator>>(Integer delta) {
return plain_integer<b> (a >> delta) ;
}
};

}





namespace cphstl {

template<std::size_t b>
class multi_word_integer
: public unnamed::full_interface<multi_word_integer<b>> {
private :

using T= long long;
using U= unsigned long long;

static constexpr std::size_t word_size= std::numeric_limits<U>::digits;
static constexpr std::size_t n= (b + word_size - 1) / word_size;

// data: an array

T a[n] ;

public :

// associated types

using self_type= multi_word_integer<b> ;
using word_type= T;
using size_type= std::size_t;
using iterator= T*;
using const_iterator= T const*;

// constants

static constexpr size_type digits= b - 1;
static constexpr bool is_signed= true;
static constexpr bool is_integer= true;
static constexpr bool is_exact= true;
static constexpr size_type radix= 2;
static constexpr bool is_bounded= true;
static constexpr bool is_modulo= not is_signed;

static constexpr cphstl::multi_word_integer<b> min( ) noexcept {
return cphstl::multi_word_integer<b> (1) << digits;
}

static constexpr cphstl::multi_word_integer<b> max( ) noexcept {
return ~ min( ) ;
}

// iterators

const_iterator begin( ) const {
return a;
}

iterator begin( ) {
return a;
}

const_iterator end( ) const {
return a + n;
}

iterator end( ) {
return a + n;
}

// size

static constexpr size_type size( ) { // in words
return n;
}

static constexpr size_type width( ) { // in bits
return b;
}

// structors

constexpr explicit multi_word_integer( )
: a{} {
}

template<typename Integer>
multi_word_integer(Integer value)
: a{T(value)} {
	//works now
}

multi_word_integer(multi_word_integer<b> const& )= default ;

multi_word_integer(multi_word_integer<b>&&)= default ;

// assignments

template<typename Integer>
multi_word_integer<b> & operator=(Integer const& value) {
// Does not work! Cut the extra
*a= T(value) ;
return *this ;
}

multi_word_integer<b> & operator=(multi_word_integer<b> const
& )= default ;

multi_word_integer<b> & operator=(multi_word_integer<b>&&)=
default ;

// representation

std::string to_string( ) const {
auto i= n;
std::string output;
output += "(" ;
while(true) {
--i;
output += std::to_string(a[i] ) ;
if (i == 0) {
break;
}
output += " , " ;
} while (i != 0) ;
output += ")" ;
return output;
}

// comparison operators

bool operator ==(multi_word_integer<b> const& other) const {
for (auto i= 0; i != n; ++i) {
if (a[i] != other.a[i] ) {
return false ;
}
}
return true;
}

bool operator< (multi_word_integer<b> const& other) const {
auto i= n - 1;
while (i != 0 and a[i] == other.a[i] ) {
--i;
}
return a[i] < other.a[i] ;
}

// unary operators

multi_word_integer<b> operator~ ( ) const {
multi_word_integer<b> copy= *this ;
for (auto i= 0; i != n; ++i) {
copy.a[i]= compl copy.a[i] ;
}
return copy;
}

// binary operators

multi_word_integer<b> operator+(multi_word_integer<b> const&
other) {
T result[n] ;
for (auto i= 0; i != n; ++i) {
T carry= __builtin_add_overflow(a[i] , other.a[i] , &result[i] ) ;
result[i] += carry;
}
return multi_word_integer<b> (result) ;
}

multi_word_integer<b> operator*(multi_word_integer<b> const&
other) {
return multi_word_integer<b> (other) ;
}

multi_word_integer<b> operator/(multi_word_integer<b> const&
other) {
return multi_word_integer<b> (other) ;
}

template<typename Integer>
multi_word_integer<b> operator<<(Integer delta) {
return multi_word_integer<b> ( ) ;
}

template<typename Integer>
multi_word_integer<b> operator>>(Integer delta) {
return multi_word_integer<b> ( ) ;
}

};

}













/* §3 */

namespace cphstl {

template<std::size_t b>
class multi_word_natural
: public unnamed::full_interface<multi_word_natural<b>> {
private :

using T= long long;
using U= unsigned long long;

static constexpr std::size_t word_size= std::numeric_limits<U>::digits;
static constexpr std::size_t n= (b + word_size - 1) / word_size;

// data: an array

T a[n] ;

public :

// associated types


using self_type= multi_word_natural<b> ;
using word_type= T;
using size_type= std::size_t;
using iterator= T*;
using const_iterator= T const*;

// constants

static constexpr size_type digits= b;
static constexpr bool is_signed= false ;
static constexpr bool is_integer= true;
static constexpr bool is_exact= true;
static constexpr size_type radix= 2;
static constexpr bool is_bounded= true;
static constexpr bool is_modulo= not is_signed;

static constexpr cphstl::multi_word_integer<b> min( ) noexcept {
return cphstl::multi_word_integer<b> ( ) ;
}

static constexpr cphstl::multi_word_integer<b> max( ) noexcept {
return ~ cphstl::multi_word_integer<b> ( ) ;
}

// iterators

const_iterator begin( ) const {
return a;
}
iterator begin( ) {
return a;
}

const_iterator end( ) const {
return a + n;
}

iterator end( ) {
return a + n;
}

// size

static constexpr size_type size( ) { // in words
return n;
}

static constexpr size_type width( ) { // in bits
return b;
}

// structors

constexpr explicit multi_word_natural( )
: a{} {
}

template<typename Integer>
multi_word_natural(Integer value)
: a(T(value) ) {
// Does not work! Cut the extra
}

multi_word_natural(multi_word_natural<b> const& )= default ;

multi_word_natural(multi_word_natural<b>&&)= default ;

// assignments

template<typename Integer>
multi_word_natural<b> & operator=(Integer const& value) {
// Does not work! Cut the extra
*a= T(value) ;
return *this ;
}

multi_word_natural<b> & operator=(multi_word_natural<b> const
& )= default ;

multi_word_natural<b> & operator=(multi_word_natural<b>&&)=
default ;

// representation

std::string to_string( ) const {
auto i = n;
std::string output;
output += "(" ;
while(true) {
--i;
output += std::to_string(a[i] ) ;
if (i == 0) {
break;
}
output += " , " ;
} while (i != 0) ;
output += ")" ;
return output;
}

// comparison operators

bool operator ==(multi_word_natural<b> const& other) const {
for (auto i= 0; i != n; ++i) {
if (a[i] != other.a[i] ) {
return false ;
}
}
return true;
}

bool operator< (multi_word_natural<b> const& other) const {
auto i = n - 1;
while (i != 0 and a[i] == other.a[i] ) {
--i;
}
return a[i] < other.a[i] ;
}

// unary operators

multi_word_natural<b> operator~ ( ) const {
multi_word_natural<b> copy= *this ;
for (auto i= 0; i != n; ++i) {
copy.a[i]= compl copy.a[i] ;
}
return copy;
}

// binary operators

multi_word_natural<b> operator+(multi_word_natural<b> const&
other) {
// Does not work: carry not handled correctly
T result[n] ;
for (auto i= 0; i != n; ++i) {
T carry= __builtin_add_overflow(a[i] , other.a[i] , &result[i] ) ;
result[i] += carry;
}
return multi_word_natural<b> (result) ;
}

multi_word_natural<b> operator*(multi_word_natural<b> const&
other) {
return multi_word_natural<b> (other) ;
}

multi_word_natural<b> operator/(multi_word_natural<b> const&
other) {
return multi_word_natural<b> (other) ;
}

template<typename Integer>
multi_word_natural<b> operator<<(Integer delta) {
return multi_word_natural<b> ( ) ;
}

template<typename Integer>
multi_word_natural<b> operator>>(Integer delta) {
return multi_word_natural<b> ( ) ;
}

};

}

template<std::size_t b>
std::ostream& operator<<(std::ostream &os, cphstl::
multi_word_natural<b> const& number) {
return os << number.to_string( ) ;
}


template<std::size_t b>
std::ostream& operator<<(std::ostream &os, cphstl::
multi_word_integer<b> const& number) {
return os << number.to_string( ) ;
}

#endif