//============================================================================
// Name        : KaratsubaMultiplication.cpp
// Author      : Evin Ugur (http://evinugur.com)
// Version     : 1.0
// Copyright   : Copyright 2015. You can use this code however and wherever you want no strings attached
// Description : C++ Functions to Perform Karatsbuba Multiplications
//============================================================================

#include <iostream>
#include <string>
#include <math.h>
using namespace std;



int getLength(long long value) {
	int counter = 0;
	while (value != 0) {
		counter++;
		value /= 10;
	}
	return counter;
}

long long multiply(long long x, long long y) {
	int xLength = getLength(x);
	int yLength = getLength(y);

	// the bigger of the two lengths
	int N = (int)(fmax(xLength, yLength));

	// if the max length is small it's faster to just flat out multiply the two nums
	if (N < 10)
		return x * y;

	//max length divided and rounded up
	N = (N/2) + (N%2);

	long long multiplier = pow(10, N);

	long long b = x/multiplier;
	long long a = x - (b * multiplier);
	long long d = y / multiplier;
	long long c = y - (d * N);

	long long z0 = multiply(a,c);
	long long z1 = multiply(a + b, c + d);
	long long z2 = multiply(b, d);


    return z0 + ((z1 - z0 - z2) * multiplier) + (z2 * (long long)(pow(10, 2 * N)));

}

string append10s(string a, int n){

	int a_length = a.length();
	int max;
	max = a_length + n;
	
	char res[max];
	int ita = 0;

	for(int j=0;j<max;j++){
		res[j]='0';
	}

	res[max]='\0';
	for(; ita<=a_length-1  ; ita++){		
		res[ita] = a[ita];
	}

	int i=0, len=sizeof(res)/sizeof(res[0]);
	while(i<=len-1){
		if(res[i]=='0');
		else{
			break;
		}
		i++;
	}
	if(i==len){
		return "0";
	}

	//return res.substr(i,len);

	return &res[i];

}

string sum(string a, string b){

	int a_length = a.length();
	int b_length = b.length();

	int max;
	max = a_length>b_length? a_length: b_length;
	max++;
	
	char res[max];
	int ita = a_length-1;
	int itb = b_length-1;
	int s=0;
	int c=0;
	int i = 0;
	for(int j=0;j<max;j++){
		res[j]='0';
	}
	res[max]='\0';
	for(; i< max and itb>=0 and ita >=0; i++){		
			s = a[ita] -'0' + b[itb] -'0' + c;
			c=s/10;
			s=s%10;
			res[max-1-i] = s+'0';
			itb--;
			ita--;
	}
	
	for(; i< max and itb>=0; i++){
			s = b[itb] -'0' + c;
			c=s/10;
			s=s%10;
			res[max-1-i] = s+'0';
			itb--;
	}
	
	for(; i< max and ita >=0; i++){
			s = a[ita] -'0' + c;
			c=s/10;
			s=s%10;
			res[max-1-i] = s+'0';
			ita--;
	}
	if(c>0){
		res[0]=c+'0';
		return res;
	}
	else{
		string str(res);
		return str.substr(1,max-1);
	}
	i=0;
	int len=sizeof(res)/sizeof(res[0]);
	while(i<=len-1){
		if(res[i]=='0');
		else{
			break;
		}
		i++;
	}
	if(i==len){
		return "0";
	}

	//return res.substr(i,len);

	return &res[i];
}

string diff(string a, string b){

	int a_length = a.length();
	int b_length = b.length();

	int max;
	max = a_length>b_length? a_length: b_length;
	
	char res[max];
	int ita = a_length-1;
	int itb = b_length-1;
	int s=0;
	int borrow=0;
	int i = 0;
	for(int j=0;j<max;j++){
		res[j]='0';
	}
	res[max]='\0';
	for(; i< max and itb>=0 and ita >=0; i++){	

			if(borrow){
				if(a[ita]>b[itb]){
					s= a[ita]-b[itb]-1;
					borrow=0;
				}
				else{
					s= a[ita]-b[itb]+9;
					borrow=1;
				}
			}	
			else{
				if(a[ita]>=b[itb]){
					s= a[ita]-b[itb];
					borrow=0;
				}
				else{
					s= a[ita]-b[itb]+10;
					borrow=1;
				}
			}
			res[max-1-i] = s+'0';
			itb--;
			ita--;
	}
	
	for(; i< max and itb>=0; i++){
			if(borrow){
				if(a[itb]>0){
					s= b[itb]-1-'0';
					borrow=0;
				}
				else{
					s= b[itb]+9-'0';
					borrow=1;
				}
			}	
			else{
				s= b[itb]-'0';
				borrow=0;	
			}
			res[max-1-i] = s+'0';
			itb--;
	}
	
	for(; i< max and ita >=0; i++){
			if(borrow){
				if(a[ita]>0){
					s= a[ita]-1-'0';
					borrow=0;
				}
				else{
					s= a[ita]+9-'0';
					borrow=1;
				}
			}	
			else{
				s= a[ita]-'0';
				borrow=0;	
			}
			res[max-1-i] = s+'0';
			ita--;
	}
	
	
	string str(res);
	i=0;
	while(i<=max-1){
		if(res[i]=='0');
		else{
			break;
		}
		i++;
	}
	if(i==max){
		return "0";
	}
	return str.substr(i,max);
	
}

string multiply_small(string x, string y){
	return to_string( strtoll(x.c_str(), NULL, 10) * strtoll(y.c_str(), NULL, 10));
	//return "too small numbers";
}

string multiply_big(string x, string y) {
	int xLength = x.length();
	int yLength = y.length();

	// the bigger of the two lengths
	int N = (int)(fmax(xLength, yLength));
	int M = N;
	// if the max length is small it's faster to just flat out multiply the two nums
	if (N < 10)
		return multiply_small(x,y);

	//max length divided and rounded up
	N = (N/2) + (N%2);
	//cout<<"\nx : "<<x;
	//cout<<"\ny : "<<y;
	//cout<<"\nN : "<<N;
	//long long multiplier = pow(10, N);
	string a, b, c, d;
	//long long b = x/multiplier;

	if(xLength>=N){
		b = x.substr(0, xLength-N);
		//cout<<"\n x1 :: b : "<<b;
		//long long a = x - (b * multiplier);
		a = x.substr(xLength-N, xLength-1);
		//cout<<"\n x2 ::a : "<<a;
	}
	else{
		b = "0";
		//cout<<"\n x1 :: b : "<<b;
		//long long a = x - (b * multiplier);
		a = x.substr(0, xLength);
		//cout<<"\n x2 ::a : "<<a;
	}
	if(yLength>=N){
		//long long d = y / multiplier;
		d = y.substr(0, yLength-N);
		//cout<<"\n y1 :: d : "<<d;
		//long long c = y - (d * multiplier);
		c = y.substr(yLength-N, yLength-1);
		//cout<<"\n y2 ::c : "<<c;
	}
	else{
		//long long d = y / multiplier;
		d = "0";
		//cout<<"\n y1 :: d : "<<d;
		//long long d = y - (d * multiplier);
		c = y.substr(0, yLength);
		//cout<<"\n y2 :: c : "<<c;
	}
	
	string z0 = multiply_big(a,c);
	string z1 = multiply_big(sum(a,b), sum(c,d));
	string z2 = multiply_big(b, d);

	//cout<<"\n z0 : "<<z0;
	//cout<<"\n z1 : "<<z1;
	//cout<<"\n z2 : "<<z2;

	//cout<<"\n diff(z1,sum(z0,z2) : "<< diff(z1,sum(z0,z2));
	//cout<<"\n Final --: "<< sum(sum(z0,append10s(diff(z1,sum(z0,z2)), N)), append10s(z2, 2*N));
    string res = sum(sum(z0,append10s(diff(z1,sum(z0,z2)), N)), append10s(z2, 2*N));
    int i=0, len=res.length();
	while(i<=len-1){
		if(res[i]=='0');
		else{
			break;
		}
		i++;
	}


	if(i==len){
		return "0";
	}

	return res.substr(i,len);
}


// C++ example (uses cout...)
// (this code works in straight C too though if you use a different main function)
int main() {
	// two numbers
	//long long a = 2406994;
	//long long b = 2328563;
	//cout << multiply(a,b) << endl;

	string a;
	string b;

	cin>>a>>b;

	cout<<"----\n"<<multiply_big(a,b)<<"\n";

	return 0;
}