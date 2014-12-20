#include <iostream>
#include <cmath>

using namespace std;




int main(){

long long int sum = 0;// sum of primes less than max
int max = 2000000; // find all primes less than this number
bool bArray[20000000]; // true if prime, false if not.
bArray[0] = false;
bArray[1] = false;

	// initialize all indexes of array to true
	for(int i = 2; i < max; i++){
		bArray[i] = true;
	}
	
	//iterate through indexes of array less than or equal to
	// the square root of the max
	for(int j = 2; j <= sqrt(max); j++){
		if(bArray[j] == true){// if prime
			// iterate through it's multiples 
			for(int k = j*2; k < max; k += j){
				bArray[k] = false;
			}
		}
	}
// iterate though multiples of prime numbers

	for (int it = 0; it < max; it++){
		if(bArray[it] == true){
			sum += it;
			cout << it;
			cout << endl;
		}
	}
cout << endl;
cout << sum;
cout << endl;

}


