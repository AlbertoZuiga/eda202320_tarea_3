#include <iostream>
#include "trees/tree.hpp"
#include <string>
#include <sstream>
#include <vector>
#include <map>

using namespace std;

map<string, double> variables; 

int main() {
    string input;
    while ((input!="end")&&(input!="END"))
    {
        cout<<"-> ";
        getline(cin, input);

        if (input.find('=')!=string::npos)
        {
            cout<<input<<endl;
        }

        istringstream separada(input);
        string cadena;
        vector<string> lista;
        while(separada>>cadena){
            lista.push_back(cadena);
        };    
    }
    return 0;
}
