#include <iostream>
#include <vector>
#include <string>

using namespace std;

#include "bar.h"
#include "foo.h"

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};

    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    foo();
    bar();

    return 0;
}