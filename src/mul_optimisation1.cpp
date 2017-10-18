/*
	Multiplication template and implementations	
	
    based on this: https://gist.github.com/jargnar/3263916

    EDIT 1: no more segmentation faults;
            4000x4000 digits

    EDIT 2: switch to std::vector; try to increase digits
            didnt work;
            at the moment we store a digit (1 to 9) in a int datastructure;
            thus 28-29 bits are all empty

    EDIT 3: reduce data structure in memory
            going to store 2 digits at a time;
            uint8_t; and carry in another uint8_t;

    -funsigned-char        

*/

#include "fft.h++"
#include <vector> //std::vector
#include <iostream>
#include <string> //std:stoi
#include <cstdint>// uint8_t ; only 8 bits 
#include <bitset> // need for debug

#define OVERFLOW 2
#define ROW b_len
#define COL a_len+b_len+OVERFLOW

using namespace std;

int getCarry(int num) {
    int carry = 0;
    if(num>=10) {
        while(num!=0) {
            carry = num %10;
            num = num/10;
        }
    }
    else carry = 0;
    return carry;
}
//takes a string of 4 chars; we store 2 digits per char
uint16_t num(string a) {
    uint16_t r= ((uint16_t)(a[0]-'0')<<12)+
                ((uint16_t)(a[1]-'0')<<8)+
                ((uint16_t)(a[2]-'0')<<4)+
                ((uint16_t)(a[3]-'0'));
    cout<<r<<'\n';            
    return r;
}

//decodes cells;
string display_cell(uint16_t cell){
    uint16_t _12mask=(uint16_t)15;//0b0000000000001111;
    uint16_t _8mask= (uint16_t)240;//0b0000000011110000;
    uint16_t _4mask= (uint16_t)3840;//0b0000111100000000;
    char c0='0'+(uint8_t)(cell>>12);
    char c1='0'+(uint8_t)((cell & _4mask)>>8);
    char c2='0'+(uint8_t)((cell & _8mask)>>4);
    char c3='0'+(uint8_t)(cell & _12mask);
    char arr[]={c0,c1,c2,c3};
    string res_s=string((char *) &arr);
    return res_s;
}

//basic_mul
//we  have encoded cells, so each 4 bit group cannot be larger than 1001
//if they are larger than 1001, it is considered overflow
uint16_t encoded_naive_mul(uint16_t a, uint16_t b, uint16_t carry_bit, uint16_t &result){
    //15;//0b0000000000001111
    //240;//0b0000000011110000
    //3840;//0b0000111100000000

    //used to carry between nibbles; as they are encoded 0-9; everything else is overflow    
    uint16_t carry;
    uint16_t carry_aux;
    //used to keep the carry that gets returned;
    uint16_t carry_result;
    uint16_t a3=a>>12;//first nibble
    uint16_t a2=(a&3840)>>8;//2nd nibble
    uint16_t a1=(a&240)>>4;//3rd nibble
    uint16_t a0=a&15;//4th nibble

    uint16_t b3=b>>12;//first nibble;
    uint16_t b2=(b&3840)>>8;
    uint16_t b1=(b&240)>>4;
    uint16_t b0=b&15;//4th nibble;



    uint16_t mod9_carry_bit;

    //result for multiplying tail nibbles (low order to high order)
    uint16_t r0;
    uint16_t r1;
    uint16_t r2;
    uint16_t r3;
    //result for multiplying head nibbles
    uint16_t r4;
    uint16_t r5;
    uint16_t r6;
    uint16_t r7;

    //last digit multiplication with everybody
    //last 2 digits
    r0=a0*b0;
    //check if nibble is lower than 9
    mod9_carry_bit= (r0&15 <= 9)? 0 : (r0&15 - 9);
    //carry is the next nibble + digit carry mod9_carry_bit
    carry=r0>>4 +mod9_carry_bit;
    //last digit mod 9
    r0&=10;
    //end of first multiplication;

    r1=a0*b1 + carry;
    mod9_carry_bit= (r1&15 <= 9)? 0 : (r1&15 - 9);
    carry=r1>>4+mod9_carry_bit;
    r1&=10;

    r2=a0*b2+carry;
    mod9_carry_bit= (r2&15 <= 9)? 0 : (r2&15 - 9);
    carry=r2>>4+mod9_carry_bit;
    r2&=10;

    r3=a0*b3+carry;
    mod9_carry_bit= (r3&15 <= 9)? 0 : (r3&15 - 9);
    carry=r3>>4+mod9_carry_bit;
    r3&=10;

    carry_aux=carry;//last nibble
    //finished first multiplication round; O(4*5)=O(20)

    //we update carry_aux at the 3rd(last nibble) and 4th(2nd to last nibble) operation
    r4=a1*b0;
    mod9_carry_bit= (r4&15 <= 9)? 0 : (r4&15 - 9);
    carry=r4>>4+mod9_carry_bit;
    r4&=10;

    //must update carry_aux
    //must add at final adition, the carry_bit + carry_aux
}

uint16_t carry(uint16_t a, uint16_t b){
    uint16_t    a_lo = (uint8_t)a;
    uint16_t    a_hi = a >> 8;
    uint16_t    b_lo = (uint8_t)b;
    uint16_t    b_hi = b >> 8;
    
    uint16_t    a_x_b_hi =  a_hi * b_hi;
    uint16_t    a_x_b_mid = a_hi * b_lo;
    uint16_t    b_x_a_mid = b_hi * a_lo;
    uint16_t    a_x_b_lo =  a_lo * b_lo;
    
    uint16_t    carry_bit = ((uint16_t)(uint8_t)a_x_b_mid +
                             (uint16_t)(uint8_t)b_x_a_mid +
                             (a_x_b_lo >> 8) ) >> 8;
    
    //uint16_t    multhi = a_x_b_hi +
    //                     (a_x_b_mid >> 32) + (b_x_a_mid >> 32) +
    //                     carry_bit;
    uint32_t r=(((uint32_t)a_x_b_hi)<<16)+(((uint32_t)a_x_b_mid)+((uint32_t)b_x_a_mid)<<8)+a_x_b_lo;
    cout<<"result: "<<r<<'\n';
    cout<<"cast result: "<< (uint16_t)r<<'\n';
    cout<<"carry bit: "<<carry_bit<<'\n';
    cout<<"result + carry"<<r+carry_bit<<'\n';
    return carry_bit;    
}



//std::vector<int> readStringToInt(string a, string b){
//
//}

uint16_t getCarry_2(uint32_t ca){


    cout<<"carry: "<<ca<<'\n';
    std::bitset<32> z(ca);
    cout<<"32 bits of input: "<<z<<'\n';
    std::bitset<16> x(ca);
    cout<<"16 bits of input: "<<x<<'\n';
    std::bitset<16> y(ca>>16);
    cout<<"16 bits >> 16 bits: "<<y<<'\n';    
    cout<<"input >> 16 bits: "<<(ca>>16)<<'\n';
    uint32_t shifted=ca>>16;
    uint16_t c=(uint16_t) shifted;
    cout<<"uint16 of >> 16: "<<c<<'\n';
    std::bitset<16> cr(c);
    cout<<cr<<'\n';
    //cout<<cr+(uint16_t) ca<<'\n';
    return c;
}

string mult(string a, string b) {
        string ret;
        long a_len = a.length();
        long b_len = b.length();
        //this should be moved in readData
        std::vector<std::vector<int>> mat(ROW, std::vector<int>(COL));
        for(int i =0; i<ROW; ++i) {
            for(int j=0; j<COL; ++j) {
                mat[i][j] = 0;

            }
        }

        long carry=0, n,x=a_len-1,y=b_len-1;
        for(long i=0; i<ROW; ++i) {
            x=a_len-1;
            carry = 0;
            for(long j=(COL-1)-i; j>=0; --j) {
                if((x>=0)&&(y>=0))  {
                   // n = (num(a[x])*num(b[y]))+carry;
                    //mat[i][j] = n%10;
                    //carry = getCarry(n);
                }
                else if((x>=-1)&&(y>=-1)) mat[i][j] = carry;
                x=x-1;
            }
            y=y-1;
        }

        carry = 0;
        //long *sum_arr;
        std::vector<int>sum_arr(COL);
        //sum_arr=new long[COL];
        for(long i =0; i<COL; ++i) sum_arr[i] = 0;
        for(long i=0; i<ROW; ++i) {
            for(long j=COL-1; j>=0; --j) {
                sum_arr[j] += (mat[i][j]);
            }
        }
        long temp;
        for(long i=COL-1; i>=0; --i) {	
            sum_arr[i] += carry;
            temp = sum_arr[i];
            sum_arr[i] = sum_arr[i]%10;
            carry = getCarry(temp);
        }
        //this should be moved into output data
        for(long i=0; i<COL; ++i) {
            ret.push_back(char(sum_arr[i]+48));
        }

        while(ret[0]=='0'){
            ret = ret.substr(1,ret.length()-1);
        }
        return ret;
}

//string outputData(std::vector<std::vector<int>> mat){
//    
//}

void printhuge(string a) {
    cout<<"\n";
    for(string::iterator i = a.begin(); i!=a.end(); ++i) {
        cout<<*i;
    }
}

int main() {
    //string a,b;
    //cin>>a>>b;
    //printhuge(mult(a,b));
    //return 0;
    string a;
    cin>>a;
    cout<<"string to number: "<<num(a)<<'\n';
    cout<<"number to string: "<<display_cell(num(a))<<'\n';
    uint16_t r=carry(num(a),num(a));
    cout<<display_cell(r)<<'\n';
    //cout<<getCarry_2(r)<<'\n';
    ////cout<<r+getCarry_2(r)<<'\n';
//
//
//    //cout<<"big or little endian? "<<'\n';
//    //unsigned int x = 1;
//    //int result=(int) (((char *)&x)[0]);
    //cout<<result<<'\n' ;

    return 0;
}