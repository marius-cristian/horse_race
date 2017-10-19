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
    //cout<<r<<'\n';            
    return r;
}

//decodes cells;
string display_cell(uint16_t cell){
    uint16_t _12mask=(uint16_t)15;//0b0000000000001111;
    uint16_t _8mask= (uint16_t)240;//0b0000000011110000;
    uint16_t _4mask= (uint16_t)3840;//0b0000111100000000;
                   
    char c0='0'+(cell>>12);
    char c1='0'+(((cell & _4mask)>>8));
    char c2='0'+(((cell & _8mask)>>4));
    char c3='0'+((cell & _12mask));
    char arr[]={c0,c1,c2,c3};
    string res_s=string((char *) &arr);
    return res_s;
}


//check if nibble is lower than 9;
//add 1 to carry if nible is bigger than 9; else nothin;
//modify value in place
uint16_t mod_digit(uint16_t &x){
    if((x&15)<=9){
        x&=15;
        //cout<<"mod_digit debug if branch: "<<display_cell(x)<<'\n';
        return ((((x>>1) /5))&15); //this is /10; but 10=2*5; dont know how to write /5 bitwise
    }
    x=(x&15)-10;
    //cout<<"mod_digit debug else branch: "<<display_cell(x)<<'\n';
    return (((x>>1)/5)&15 + 1);
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
    uint16_t a3=(a>>12);//first nibble
    uint16_t a2=(a&3840)>>8;//2nd nibble
    uint16_t a1=(a&240)>>4;//3rd nibble
    uint16_t a0=(a&15);//4th nibble

    uint16_t b3=b>>12;//first nibble;
    uint16_t b2=(b&3840)>>8;
    uint16_t b1=(b&240)>>4;
    uint16_t b0=b&15;//4th nibble;

    uint16_t mod9_carry_bit;

    //result for multiplying tail nibbles (low order to high order)
    uint16_t raux;
    uint16_t r0;
    uint16_t r1;
    uint16_t r2;
    uint16_t r3;
    //result for multiplying head nibbles
    uint16_t r4;
    uint16_t r5;
    uint16_t r6;
    uint16_t r7;

    uint16_t r8;
    uint16_t r9;
    uint16_t r10;
    uint16_t r11;

    uint16_t r12;
    uint16_t r13;
    uint16_t r14;
    uint16_t r15;        
    /*
    result will be:
    r0 + (r4+r1+carry_1 % 10)<<4 + (r2+r5+r7+ carry)<<8 + (r3+r6+r9+r12+carry)<<12

    carry returned will be:
        (r7+r10+r13+ carry)+(r11+r14+carry)<<4+(r15+carry)<<8+ carry<<12 


     multiplying       a3 a2 a1 a0 (*)
                       b3 b2 b1 b0
                    ----------------
                  c1 | r3 r2 r1 r0
               c2 r7 | r6 r5 r4
           c3 r11 r10| r9 r8
       c4 r15 r14 r13| r12     
    */

    //last digit multiplication with everybody
    //last digit
    //std::bitset<16> z(a);
    //cout<<"16 bits of input a: "<<z<<'\n';
    //std::bitset<16> zz(a0);
    //cout<<"16 bitsof input a0: "<<zz<<'\n';

    //cout<<"a0 before: "<<display_cell(a0)<<'\n';
    //cout<<"b0 before: "<<display_cell(b0)<<'\n';
    r0=a0*b0;
    std::bitset<16> zr(r0);
    //cout<<"16 bitsof input zr: "<<zr<<'\n';
    //cout<<"r0 before: "<<display_cell(r0)<<'\n';
    //check if nibble is lower than 9
    raux=r0;
    mod9_carry_bit= mod_digit(r0);
    //cout<<"r0 after: "<<display_cell(r0)<<'\n';    
    carry=(((raux>>4))) +mod9_carry_bit;
    //std::bitset<16> zrr(carry);
    //cout<<"16 bitsof input carry: "<<zrr<<'\n';    
    //cout<<"c0_1: "<<display_cell(carry)<<'\n';
    //end of first multiplication;

    r1=a0*b1 + carry;
    raux=r1;
    mod9_carry_bit= mod_digit(r1);
    carry=(raux>>4) +mod9_carry_bit;

    r2=a0*b2+carry;
    raux=r2;
    mod9_carry_bit= mod_digit(r2);
    carry=(raux>>4) +mod9_carry_bit;

    r3=a0*b3+carry;
    raux=r3;
    mod9_carry_bit= mod_digit(r3);
    carry=(raux>>4) +mod9_carry_bit;

    carry_aux=carry;//last nibble
    //finished first multiplication round; O(4*5)=O(20)

    //we update carry_aux at the 3rd(last nibble) and 4th(2nd to last nibble) operation
    r4=a1*b0;
    raux=r4;
    mod9_carry_bit= mod_digit(r4);
    carry=(raux>>4) +mod9_carry_bit;

    r5=a1*b1+carry;
    raux=r5;
    mod9_carry_bit= mod_digit(r5);
    carry=(raux>>4) +mod9_carry_bit;

    r6=a1*b2+carry;
    raux=r6;
    mod9_carry_bit= mod_digit(r6);
    carry=(raux>>4) +mod9_carry_bit;

    //add carry aux form last round
    r7=a1*b3+carry+carry_aux;
    raux=r7;
    mod9_carry_bit= mod_digit(r7);
    carry=(raux>>4) +mod9_carry_bit; 

    carry_aux=carry; 
    //finished second round

    r8=a2*b0;
    raux=r8;
    mod9_carry_bit= mod_digit(r8);
    carry=(raux>>4) +mod9_carry_bit;

    r9=a2*b1+carry;
    raux=r9;
    mod9_carry_bit= mod_digit(r9);
    carry=(raux>>4) +mod9_carry_bit;

    r10=a2*b2+carry;
    raux=r10;
    mod9_carry_bit= mod_digit(r10);
    carry=(raux>>4) +mod9_carry_bit;

    //add carry aux form last round
    r11=a2*b3+carry+carry_aux;
    raux=r11;
    mod9_carry_bit= mod_digit(r11);
    carry=(raux>>4) +mod9_carry_bit; 

    carry_aux=carry;

    r12=a3*b0;
    raux=r12;
    mod9_carry_bit= mod_digit(r12);
    carry=(raux>>4) +mod9_carry_bit;

    r13=a3*b1+carry;
    raux=r13;
    mod9_carry_bit= mod_digit(r13);
    carry=(raux>>4) +mod9_carry_bit;

    r14=a3*b2+carry;
    raux=r14;
    mod9_carry_bit= mod_digit(r14);
    carry=(raux>>4) +mod9_carry_bit;

    //add carry aux form last round
    r15=a3*b3+carry+carry_aux;
    raux=r15;
    mod9_carry_bit= mod_digit(r15);
    carry=(raux>>4) +mod9_carry_bit; 

    carry_aux=carry;

    //finished all rounds; now must update result; and carry;
    result=r0;//unit digit
    //use r0 as aux space;
    r0=r1+r4;
    raux=r0;
    mod9_carry_bit= mod_digit(r0);
    carry=(raux>>4) +mod9_carry_bit;
    result+= (r0<<4); //10th order digit

    r0=r2+r5+r7+carry;
    raux=r0;
    mod9_carry_bit= mod_digit(r0);
    carry=(raux>>4) +mod9_carry_bit;
    result+= (r0<<8); //100th order digit

    r0=r3+r6+r9+r12+carry;
    raux=r0;
    mod9_carry_bit= mod_digit(r0);
    carry=(raux>>4) +mod9_carry_bit;
    result+= (r0<<12); //1000th order digit  


    //computing carry;

    carry_result=r7+r10+r13;     
    raux=carry_result;
    mod9_carry_bit=mod_digit(carry_result);//rightmost digit of carry
    carry=(raux>>4)+ mod9_carry_bit;

    //now use r7 as aux space for computation
    r7=r11+r14+carry;
    raux=r7;
    mod9_carry_bit=mod_digit(r7);
    carry=(raux>>4)+ mod9_carry_bit;
    carry_result+= (r7<<4);//2-rightmost digits

    r7=r15+carry;
    raux=r7;
    mod9_carry_bit=mod_digit(r7);
    carry=(raux>>4)+ mod9_carry_bit;
    carry_result+= (r7<<8);//3-rightmost digits

    r7=carry_aux+carry;
    raux=r7;
    mod9_carry_bit=mod_digit(r7);
    //there exists no more carry
    carry_result+= (r7<<12);//2-rightmost digits
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
    //cout<<"result: "<<r<<'\n';
    //cout<<"cast result: "<< (uint16_t)r<<'\n';
    //cout<<"carry bit: "<<carry_bit<<'\n';
    //cout<<"result + carry"<<r+carry_bit<<'\n';
    return carry_bit;    
}

vector<uint16_t> inputToVector(string a){
    int aux=a.length()&3; //%4 operator
    string first;
    int i;
    switch (aux){
        case 0: first=a[0]+a[1]+a[2]+a[3];
                i=4;
                break;
        case 1: first='0'+a[0]+a[1]+a[2];
                i=3;
                break;
        case 2: first="00"+a[0]+a[1];
                i=2;
                break;
        case 3: first="000"+a[0];
                i=1;
                break;
        default: break;
    }
    int n=a.length()>>2;//division by 4, is shift by the power of 2^2;
    vector<uint16_t> result;
    result.push_back(num(first));
    for(;i<n;i+=4){
        first=a[i]+a[i+1]+a[i+2]+a[i+3];
        result.push_back(num(first));
    }
    return result;
}

vector<uint16_t> mul_1(vector<uint16_t> a, vector<uint16_t> b){
    long i;
    long j;
    vector<uint16_t> result;
    uint16_t carry;
    uint16_t inter_res;
    for(i=0;i<a.size();i++){
        carry=0;
        for(j=0;j<b.size();j++){
            carry=encoded_naive_mul(a[i],b[j],carry,inter_res);
            result.push_back(inter_res);
        }
    }
    return result;   
}

string vector_decode(vector<uint16_t> r){
    long i;
    string s="";
    for (i=r.size()-1;i>=0;i--){
        s+=display_cell(r[i]);
    }
    return s;
}


//std::vector<int> readStringToInt(string a, string b){
//
//}

uint16_t getCarry_2(uint32_t ca){


    //cout<<"carry: "<<ca<<'\n';
    //std::bitset<32> z(ca);
    //cout<<"32 bits of input: "<<z<<'\n';
    //std::bitset<16> x(ca);
    //cout<<"16 bits of input: "<<x<<'\n';
    //std::bitset<16> y(ca>>16);
    //cout<<"16 bits >> 16 bits: "<<y<<'\n';    
    //cout<<"input >> 16 bits: "<<(ca>>16)<<'\n';
    uint32_t shifted=ca>>16;
    uint16_t c=(uint16_t) shifted;
    //cout<<"uint16 of >> 16: "<<c<<'\n';
    //std::bitset<16> cr(c);
    //cout<<cr<<'\n';
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
                  // mat[i][j] = n%10;
                  // carry = getCarry(n);
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
    string a,b;
    cin>>a>>b;
    vector<uint16_t>n1= inputToVector(a);
    vector<uint16_t>n2=inputToVector(b);
    vector<uint16_t>r=mul_1(n1,n2);
    cout<<vector_decode(r);
    //cout<<"string to number: "<<num(a)<<'\n';
    //cout<<"number to string: "<<display_cell(num(a))<<'\n';
    //uint16_t r=carry(num(a),num(a));
    //cout<<display_cell(r)<<'\n';

    //uint16_t result;
    //uint16_t carry_1;
    //carry_1=encoded_naive_mul(num(a),num(a),0,result);
    //cout<<"decode result: "<<display_cell(result)<<'\n';
    //cout<<"decode carry: "<<display_cell(carry_1)<<'\n';
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