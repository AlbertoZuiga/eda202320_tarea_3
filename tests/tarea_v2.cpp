#include <iostream>
#include <string>
#include <stack>
#include <map>
#include <cmath>
#include <sstream>

using namespace std;

map<string, double> variables;  // Diccionario para almacenar variables y sus valores
double ans = 0.0;  // Variable global para guardar el resultado

// Función para evaluar expresiones postfix
double evaluatePostfix(const string& postfix) {
    stack<double> operandStack;
    stringstream ss(postfix);
    string token;

    while (ss >> token) {
        if (isdigit(token[0])) {
            operandStack.push(stod(token));  // Convertir el token a un número
        } else if (isalpha(token[0])) {
            if (variables.find(token) != variables.end()) {
                operandStack.push(variables[token]);
            } else {
                cerr << "Variable no definida: " << token << endl;
                return 0.0;
            }
        } else if (token == "+") {
            double operand2 = operandStack.top(); operandStack.pop();
            double operand1 = operandStack.top(); operandStack.pop();
            operandStack.push(operand1 + operand2);
        } else if (token == "-") {
            double operand2 = operandStack.top(); operandStack.pop();
            double operand1 = operandStack.top(); operandStack.pop();
            operandStack.push(operand1 - operand2);
        } else if (token == "*") {
            double operand2 = operandStack.top(); operandStack.pop();
            double operand1 = operandStack.top(); operandStack.pop();
            operandStack.push(operand1 * operand2);
        } else if (token == "/") {
            double operand2 = operandStack.top(); operandStack.pop();
            double operand1 = operandStack.top(); operandStack.pop();
            operandStack.push(operand1 / operand2);
        } else if (token == "^") {
            double operand2 = operandStack.top(); operandStack.pop();
            double operand1 = operandStack.top(); operandStack.pop();
            operandStack.push(pow(operand1, operand2));
        }
    }

    return operandStack.top();
}

// Función para convertir expresión infix a postfix
string infixToPostfix(const string& infix) {
    string postfix;
    stack<char> operatorStack;

    stringstream ss(infix);
    string token;

    while (ss >> token) {
        if (isalnum(token[0])) {
            postfix += token + " ";
        } else if (token == "(") {
            operatorStack.push(token[0]);
        } else if (token == ")") {
            while (!operatorStack.empty() && operatorStack.top() != '(') {
                postfix += operatorStack.top();
                postfix += " ";
                operatorStack.pop();
            }
            if (!operatorStack.empty()) {
                operatorStack.pop();  // Eliminar el '(' correspondiente
            }
        } else {
            while (!operatorStack.empty() && operatorStack.top() != '(' && token[0] <= operatorStack.top()) {
                postfix += operatorStack.top();
                postfix += " ";
                operatorStack.pop();
            }
            operatorStack.push(token[0]);
        }
    }

    while (!operatorStack.empty()) {
        postfix += operatorStack.top();
        postfix += " ";
        operatorStack.pop();
    }

    return postfix;
}

int main() {
    cout << "******** CALCULADORA INTERACTIVA ********" << endl;
    
    string input;
    while ((input!="end")&&(input!="END")) {
        cout << "$ ";
        getline(cin, input);

        if (input.find('=') != string::npos) {
            size_t pos = input.find('=');
            string variable = input.substr(0, pos - 1);
            string expression = input.substr(pos + 2);  // Saltar espacio después del igual

            string postfix = infixToPostfix(expression);
            double result = evaluatePostfix(postfix);

            variables[variable] = result;
            ans = result;
            cout << variable << " = " << result << endl;
        } else {
            string postfix = infixToPostfix(input);
            double result = evaluatePostfix(postfix);

            if (result != 0.0) {
                ans = result;
                cout << "ans = " << result << endl;
            }
        }
    }

    return 0;
}
