#include <iostream>
#include "hello.hpp"

using namespace std;

int main() {
	cout << "Test" << endl;
	cout << "inc: " << ((inc(1) == 2)? "pass":"fail") << endl;
	cout << "dec: " << ((dec(1) == 0)? "pass":"fail") << endl;

	return 0;
}

