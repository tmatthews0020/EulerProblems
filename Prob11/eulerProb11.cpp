#include <iostream>
#include <fstream>
#include <string>

using namespace std;

struct prob11{

	public:
		void openStream();
		void fillVector();
	private:
	ifstream file;
	vector<vector<int>> v;
	int x;
	int y;

};



int main(){

string s;
ifstream file;
file.open("prob11.txt");

vector<vector<int>> 

	while(getline(file, s)){

		cout << s;
		cout << endl;

	}

file.close();

}

ifstream prob11::openStream(){


}
