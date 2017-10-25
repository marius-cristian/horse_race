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
    //string res_s=string((char *) &arr);
    string res_s=string()+c0+c1+c2+c3;
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
    //need this to be sure result is null;
    //result&=0;
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
    uint16_t b0=(b&15);//4th nibble;      somehow b has an extra char at the end sometimes

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

    r0=a0*b0;
    //check if nibble is lower than 9
    raux=r0;
    mod9_carry_bit= mod_digit(r0);   
    carry=mod9_carry_bit; 
    //end of first multiplication;


    r1=a0*b1 + carry;    
    raux=r1;
    mod9_carry_bit= mod_digit(r1);    
    carry=mod9_carry_bit;

    r2=a0*b2+carry;    
    raux=r2;
    mod9_carry_bit= mod_digit(r2);     
    carry=mod9_carry_bit;    

    r3=a0*b3+carry;    
    raux=r3;
    mod9_carry_bit= mod_digit(r3);    
    carry=mod9_carry_bit;     

    carry_aux=carry;//last nibble
    //finished first multiplication round; O(4*5)=O(20)

    //we update carry_aux at the 3rd(last nibble) and 4th(2nd to last nibble) operation    
    r4=a1*b0;
    raux=r4;
    mod9_carry_bit= mod_digit(r4);     
    carry=mod9_carry_bit;     

    r5=a1*b1+carry;
    raux=r5;   
    mod9_carry_bit= mod_digit(r5);     
    carry=mod9_carry_bit;    

    r6=a1*b2+carry;
    raux=r6;    
    mod9_carry_bit= mod_digit(r6);     
    carry=mod9_carry_bit;     

    //add carry aux form last round
    r7=a1*b3+carry+carry_aux;//+carry_aux;    
    raux=r7;
    mod9_carry_bit= mod_digit(r7);    
    carry=mod9_carry_bit; 

    carry_aux=carry; 
    //finished second round

    r8=a2*b0;    
    raux=r8;
    mod9_carry_bit= mod_digit(r8);    
    carry=mod9_carry_bit;

    r9=a2*b1+carry;        
    raux=r9;
    mod9_carry_bit= mod_digit(r9);     
    carry=mod9_carry_bit;     

    r10=a2*b2+carry;   
    raux=r10;
    mod9_carry_bit= mod_digit(r10);     
    carry=mod9_carry_bit; 

    //add carry aux form last round
    r11=a2*b3+carry+carry_aux;   
    raux=r11;
    mod9_carry_bit= mod_digit(r11);     
    carry=mod9_carry_bit; 

    carry_aux=carry;

    r12=a3*b0;    
    raux=r12;
    mod9_carry_bit= mod_digit(r12); 
    carry=mod9_carry_bit;   

    r13=a3*b1+carry;    
    raux=r13;
    mod9_carry_bit= mod_digit(r13);    
    carry=mod9_carry_bit;

    r14=a3*b2+carry;
    raux=r14;
    mod9_carry_bit= mod_digit(r14);    
    carry=mod9_carry_bit;    

    //add carry aux form last round
    r15=a3*b3+carry+carry_aux;//+carry_aux; 
    raux=r15;
    mod9_carry_bit= mod_digit(r15);     
    carry=mod9_carry_bit;
       

    carry_aux=carry;

    //finished all rounds; now must update result; and carry;
   
//1
    result=r0;//unit digit
    //use r0 as aux space;
//2    
    r0=r1+r4;    
    raux=r0;
    mod9_carry_bit= mod_digit(r0); 
    carry=mod9_carry_bit;
    result+= (r0<<4); //10th order digit

//3

    r0=r2+r5+r8+carry;     
    raux=r0;
    mod9_carry_bit= mod_digit(r0);     
    carry=mod9_carry_bit;
    result+= (r0<<8); //100th order digit
//4
    r0=r3+r6+r9+r12+carry; 
    raux=r0;
    mod9_carry_bit= mod_digit(r0); 
    carry=mod9_carry_bit;
    result+= (r0<<12); //1000th order digit  


    //computing carry;
    carry_result=r7+r10+r13+carry;     
    raux=carry_result;
    mod9_carry_bit=mod_digit(carry_result);//rightmost digit of carry
    carry= mod9_carry_bit;

    //now use r7 as aux space for computation
    r7=r11+r14+carry;
    raux=r7;
    mod9_carry_bit=mod_digit(r7);
    carry=mod9_carry_bit;
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

    return carry_result;
}


//input 1 digit as uint16_t; returns carry 1 or 0;
uint16_t digit_check(uint16_t &x){
    if(x<=9){
        return 0;
    }
    else{
        x-=10;
        return 1;
    }
}
//returns carry 1 or 0, result is parameter;
bool cell_add(uint16_t a, uint16_t b, bool prev_carry, uint16_t &res){
    res&=0;
    uint16_t c1;
    uint16_t a3=(a>>12);//first nibbles   somehow a dispaly correctly;
    uint16_t a2=(a&3840)>>8;//2nd nibble
    uint16_t a1=(a&240)>>4;//3rd nibble
    uint16_t a0=(a&15);//4th nibble

    uint16_t b3=(b>>12);//first nibble;
    uint16_t b2=(b&3840)>>8;
    uint16_t b1=(b&240)>>4;
    uint16_t b0=(b&15);//4th nibble;      somehow b has an extra char at the end sometimes


    a0+= (b0 + (uint16_t)(prev_carry? 1 : 0));
    c1=digit_check(a0);
    a1+=(b1+c1);
    c1=digit_check(a1);
    a2+=(b2+c1);
    c1=digit_check(a2);
    a3+=(b3+c1);
    c1=digit_check(a3);
    res=a0+(a1<<4)+(a2<<8)+(a3<<12);
    return c1;

}
//does inplace digit substraction
bool negative_check(uint16_t &a, uint16_t b, bool carry){
    b+= uint16_t (carry? 1:0);
    if(a>= (uint16_t)b){
        a-=b;
        return false;
    }else{
        a=(uint16_t) (a+10-b);
        return true;
    }
}
//returns carry 1 or 0
bool cell_substract(uint16_t a, uint16_t b, bool prev_carry, uint16_t &res){
    bool c1;
    uint16_t a3=(a>>12);//first nibbles   somehow a dispaly correctly;
    uint16_t a2=(a&3840)>>8;//2nd nibble
    uint16_t a1=(a&240)>>4;//3rd nibble
    uint16_t a0=(a&15);//4th nibble

    uint16_t b3=(b>>12);//first nibble;
    uint16_t b2=(b&3840)>>8;
    uint16_t b1=(b&240)>>4;
    uint16_t b0=(b&15);//4th nibble;      somehow b has an extra char at the end sometimes

    c1=negative_check(a0,b0,prev_carry);
    c1=negative_check(a1,b1,c1);
    c1=negative_check(a2,b2,c1);
    c1=negative_check(a3,b3,c1);
    res=a0+(a1<<4)+(a2<<8)+(a3<<12);
    return c1;

};



vector<uint16_t> inputToVector(string a){
    int n=a.length();
    int aux=n&3; //%4 operator
    //cout<<"inputto vector size: "<<a.length()<<'\n';
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

    //int n=a.length()>>2;//division by 4, is shift by the power of 2^2;
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
    long n=a.size();
    long m=b.size();
    //cout<<"size a: "<<n<<" size b: "<< m<<'\n';
    vector<uint16_t> result;
    uint16_t carry;
    uint16_t inter_res;
    vector<uint16_t> final_res;
    long pos=0;
    bool create=true;
    bool add_carry=false;
    uint16_t carry_aux;
    int k=0;
    for(i=(n-1);i>=0;i--){
        carry=0;
        add_carry=false;        
        for(j=(m-1);j>=0;j--){
            if(i==(n-1)){
                //cout<<"we are pushing back 1"<<'\n';
                carry_aux=carry;
                carry=encoded_naive_mul(a[i],b[j],carry,inter_res);
                //(j==m-1)?cout<<display_cell(carry)<<" ;; "<<display_cell(inter_res)<<" ^^ "<<'\n':cout<<"-";
                add_carry=cell_add(inter_res,carry_aux,add_carry,inter_res);
                result.push_back(inter_res);    
            }
            else if(j==0){
                //cout<<"we are pushing back 2"<<'\n';
                carry_aux=carry;
                carry=encoded_naive_mul(a[i],b[j],carry,inter_res);
                add_carry=cell_add(inter_res,carry_aux,add_carry,inter_res);
                result.push_back(inter_res);
                result.push_back(carry);    
            }
            else{ //{if(j>0){
                //cout<<"we are pushing back 3"<<'\n';
                carry=encoded_naive_mul(a[i],b[j],carry,inter_res);
                add_carry=cell_add(result.at(m-i-1+j-1),inter_res,add_carry,inter_res);
                result.at(m-i-1+j-1)=inter_res;
            }

            //if((j>i && i!=0 && j!=(m-1)) || i!=(n-1)){
            //    cout<<k<<'\n';
            //    cout<<"explain logic here"<<'\n';
            //    add_carry=cell_add(result[i+j],inter_res,add_carry,inter_res);
            //    result.at(n-i-1+m-j-1)=inter_res;
            //    //result.erase((i+j));
            //    //result.insert((i+j),inter_res);
            //}
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