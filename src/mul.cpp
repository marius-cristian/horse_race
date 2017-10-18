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
*/

#include "fft.h++"
#include <vector> //std::vector
#include <iostream>
#include <string>
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

int num(char a) {
    return int(a)-48;
}


//std::vector<std::vector<int>> readData(string a, string b){
//
//}

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
                    n = (num(a[x])*num(b[y]))+carry;
                    mat[i][j] = n%10;
                    carry = getCarry(n);
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
    string a,b;
    cin>>a>>b;
    printhuge(mult(a,b));
    return 0;
}