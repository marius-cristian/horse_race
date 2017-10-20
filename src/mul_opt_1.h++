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

using namespace std;

//takes a string of 4 chars; we store 2 digits per char
//THIS WORKS
uint16_t num(string a) {
    uint16_t r= (((uint16_t)(a[0]-'0'))<<12)+
                (((uint16_t)(a[1]-'0'))<<8)+
                (((uint16_t)(a[2]-'0'))<<4)+
                ((uint16_t)(a[3]-'0'));
    //cout<<r<<'\n';            
    return r;
}

//decodes cells;
//THIS WORKS
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
//THIS WORKS
uint16_t mod_digit(uint16_t &x){
    int16_t aux;
    if((x&15)<=9){
        aux= ((((x) / (uint16_t)10)-((x>>4)&15))); //this is /10; but 10=2*5; dont know how to write /5 bitwise
        x=(x&15);
    }
    else{
    aux= (((x)/(uint16_t)10)-((x>>4)&15) + 1);
    x=((x&15)-10);
    }

    return aux;
}


//basic_mul
//we  have encoded cells, so each 4 bit group cannot be larger than 1001
//if they are larger than 1001, it is considered overflow
//THIS MAYBE WORKS; 
uint16_t encoded_naive_mul(uint16_t a, uint16_t b, uint16_t carry_bit, uint16_t &result){
    //15;//0b0000000000001111
    //240;//0b0000000011110000
    //3840;//0b0000111100000000

    //used to carry between nibbles; as they are encoded 0-9; everything else is overflow    
    uint16_t carry;
    uint16_t carry_aux;
    //used to keep the carry that gets returned;
    uint16_t carry_result;
    uint16_t a3=(a>>12);//first nibbles   somehow a dispaly correctly;
    uint16_t a2=(a&3840)>>8;//2nd nibble
    uint16_t a1=(a&240)>>4;//3rd nibble
    uint16_t a0=(a&15);//4th nibble

    uint16_t b3=(b>>12);//first nibble;
    uint16_t b2=(b&3840)>>8;
    uint16_t b1=(b&240)>>4;
    uint16_t b0=(b&15);//4th nibble;      somehow b has an extra char at the end

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

    //std::bitset<16> aa(a);
    //cout<<"16 bitsof input a: "<<aa<<'\n';
//
//    //std::bitset<16> bb(b);
//    //cout<<"16 bitsof input b: "<<bb<<'\n';
//
//    //cout<<"a0 before: "<<display_cell(a0)<<'\n';
    //cout<<"b0 before: "<<display_cell(b0)<<'\n';
    r0=a0*b0;
    //std::bitset<16> zr(r0);
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
    //cout<<'\n'; 
    //end of first multiplication;

    //works fine untill here

    r1=a0*b1 + carry;
    //std::bitset<16> zr1(r1);
    //cout<<"16 bitsof input r1: "<<zr1<<'\n';
    //cout<<"r1 after: "<<display_cell(r1)<<'\n';     
    raux=r1;
    mod9_carry_bit= mod_digit(r1);
    //cout<<"r1 after: "<<display_cell(r1)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr1(carry);
    //cout<<"16 bitsof input carry1: "<<zrr1<<'\n';    
    //cout<<"c0_2: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';    

    r2=a0*b2+carry;
    //std::bitset<16> zr2(r2);
    //cout<<"16 bitsof input r2: "<<zr2<<'\n';
    //cout<<"r2 after: "<<display_cell(r1)<<'\n';    
    raux=r2;
    mod9_carry_bit= mod_digit(r2);
    //cout<<"r2 after: "<<display_cell(r2)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr2(carry);
    //cout<<"16 bitsof input carry1: "<<zrr1<<'\n';    
    //cout<<"c0_2: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';    

    r3=a0*b3+carry;
    //std::bitset<16> zr3(r3);
    //cout<<"16 bitsof input r3: "<<zr3<<'\n';
    //cout<<"r1 after: "<<display_cell(r1)<<'\n';    
    raux=r3;
    mod9_carry_bit= mod_digit(r3);
    //cout<<"r3 after: "<<display_cell(r3)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr3(carry);
    //cout<<"16 bitsof input carry3: "<<zrr3<<'\n';    
    //cout<<"c0_3: "<<display_cell(carry)<<'\n';
    //cout<<'\n';     

    carry_aux=carry;//last nibble
    //finished first multiplication round; O(4*5)=O(20)

    //we update carry_aux at the 3rd(last nibble) and 4th(2nd to last nibble) operation
    r4=a1*b0;
    //std::bitset<16> zr4(r4);
    //cout<<"16 bitsof input r4: "<<zr4<<'\n';
    //cout<<"r1 after: "<<display_cell(r4)<<'\n';     
    raux=r4;
    mod9_carry_bit= mod_digit(r4);
    //cout<<"r4 after: "<<display_cell(r4)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr4(carry);
    //cout<<"16 bitsof input carry4: "<<zrr4<<'\n';    
    //cout<<"c0_4: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';     

    r5=a1*b1+carry;

    raux=r5;
    //std::bitset<16> zr5(r5);
    //cout<<"16 bitsof input r5: "<<zr5<<'\n';
    //cout<<"r1 after: "<<display_cell(r5)<<'\n';    
    mod9_carry_bit= mod_digit(r5);
    //cout<<"r5 after: "<<display_cell(r5)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr5(carry);
    //cout<<"16 bitsof input carry5: "<<zrr5<<'\n';    
    //cout<<"c0_5: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';     

    r6=a1*b2+carry;
    raux=r6;
    //std::bitset<16> zr6(r6);
    //cout<<"16 bitsof input r6: "<<zr6<<'\n';
    //cout<<"r1 after: "<<display_cell(r6)<<'\n';    
    mod9_carry_bit= mod_digit(r6);
    //cout<<"r6 after: "<<display_cell(r6)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr6(carry);
    //cout<<"16 bitsof input carry6: "<<zrr6<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';     

    //add carry aux form last round
    r7=a1*b3+carry;//+carry_aux;
    //std::bitset<16> zr7(r7);
    //cout<<"16 bitsof input r7: "<<zr7<<'\n';
    //cout<<"r1 after: "<<display_cell(r7)<<'\n';    
    raux=r7;
    mod9_carry_bit= mod_digit(r7);
    //cout<<"r7 after: "<<display_cell(r7)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit; 
    // std::bitset<16> zrr7(carry);
    //cout<<"16 bitsof input carry7: "<<zrr7<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';
    
    r7+=carry_aux;
    //cout<<"r7 after carry aux: "<<display_cell(r7)<<'\n';     
    raux=r7;
    mod9_carry_bit=mod_digit(r7);
    carry+=mod9_carry_bit;
    //std::bitset<16> zrr7_(carry);
    //cout<<"16 bitsof input carry7_: "<<zrr7_<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';    

    carry_aux=carry; 
    //finished second round

    r8=a2*b0;
    //std::bitset<16> zr8(r8);
    //cout<<"16 bitsof input r8: "<<zr8<<'\n';
    //cout<<"r1 after: "<<display_cell(r8)<<'\n';    
    raux=r8;
    mod9_carry_bit= mod_digit(r8);
    //cout<<"r8 after: "<<display_cell(r8)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    // std::bitset<16> zrr8(carry);
    //cout<<"16 bitsof input carry8: "<<zrr8<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n'; 

    r9=a2*b1+carry;
    //std::bitset<16> zr9(r9);
    //cout<<"16 bitsof input r9: "<<zr9<<'\n';
    //cout<<"r1 after: "<<display_cell(r9)<<'\n';        
    raux=r9;
    mod9_carry_bit= mod_digit(r9);
    //cout<<"r9 after: "<<display_cell(r9)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    // std::bitset<16> zrr9(carry);
    //cout<<"16 bitsof input carry9: "<<zrr9<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';     

    r10=a2*b2+carry;
    //std::bitset<16> zr10(r10);
    //cout<<"16 bitsof input r10: "<<zr10<<'\n';
    //cout<<"r1 after: "<<display_cell(r10)<<'\n';    
    raux=r10;
    mod9_carry_bit= mod_digit(r10);
    //cout<<"r10 after: "<<display_cell(r10)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr10(carry);
    //cout<<"16 bitsof input carry10: "<<zrr10<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n'; 

    //add carry aux form last round
    r11=a2*b3+carry+carry_aux;
    //std::bitset<16> zr11(r11);
    //cout<<"16 bitsof input r11: "<<zr11<<'\n';
    //cout<<"r1 after: "<<display_cell(r11)<<'\n';    
    raux=r11;
    mod9_carry_bit= mod_digit(r11);
    //cout<<"r11 after: "<<display_cell(r11)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr11(carry);
    //cout<<"16 bitsof input carry11: "<<zrr11<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';      

    carry_aux=carry;

    r12=a3*b0;
    //std::bitset<16> zr12(r12);
    //cout<<"16 bitsof input r11: "<<zr12<<'\n';
    //cout<<"r1 after: "<<display_cell(r12)<<'\n';    
    raux=r12;
    mod9_carry_bit= mod_digit(r12);
    //cout<<"r12 after: "<<display_cell(r12)<<'\n'; 
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr12(carry);
    //cout<<"16 bitsof input carry12: "<<zrr12<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';    

    r13=a3*b1+carry;
    //std::bitset<16> zr13(r13);
    //cout<<"16 bitsof input r13: "<<zr13<<'\n';
    //cout<<"r1 after: "<<display_cell(r13)<<'\n';     
    raux=r13;
    mod9_carry_bit= mod_digit(r13);
    //cout<<"r13 after: "<<display_cell(r13)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr13(carry);
    //cout<<"16 bitsof input carry13: "<<zrr13<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';

    r14=a3*b2+carry;
    //std::bitset<16> zr14(r14);
    //cout<<"16 bitsof input r14: "<<zr14<<'\n';
    //cout<<"r1 after: "<<display_cell(r14)<<'\n';    
    raux=r14;
    mod9_carry_bit= mod_digit(r14);
    //cout<<"r14 after: "<<display_cell(r14)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr14(carry);
    //cout<<"16 bitsof input carry14: "<<zrr14<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';    

    //add carry aux form last round
    r15=a3*b3+carry+carry_aux;
    //std::bitset<16> zr15(r15);
    //cout<<"16 bitsof input r15: "<<zr15<<'\n';
    //cout<<"r1 after: "<<display_cell(r15)<<'\n';    
    raux=r15;
    mod9_carry_bit= mod_digit(r15);
    //cout<<"r15 after: "<<display_cell(r15)<<'\n';     
    carry=(raux>>4) +mod9_carry_bit;
    //std::bitset<16> zrr15(carry);
    //cout<<"16 bitsof input carry15: "<<zrr15<<'\n';    
    //cout<<"c0_6: "<<display_cell(carry)<<'\n'; 
    //cout<<'\n';     

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
        case 0: first=string()+a[0]+a[1]+a[2]+a[3];
                i=4;
                break;
        case 1: first=string()+'0'+a[0]+a[1]+a[2];
                i=3;
                break;
        case 2: first=string()+"00"+a[0]+a[1];
                i=2;
                break;
        case 3: first=string()+"000"+a[0];
                i=1;
                break;
        default: break;
    }
    cout<<"first debug: "<<first<<'\n';
    int n=a.length()>>2;//division by 4, is shift by the power of 2^2;
    vector<uint16_t> result;
    result.push_back(num(first));
    for(;i<n;i+=4){
        first=string()+a[i]+a[i+1]+a[i+2]+a[i+3];
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