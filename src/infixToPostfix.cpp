#include <stack>
#include <string>
#include <sstream>
#include <cmath>
#include <map>
#include <iostream>

std::map<std::string, double> variables;
double ans = 0.0;
std::string last_operation = "";

bool isOperator(const std::string &c) {
    return (c == "+" || c == "-" || c == "*" || c == "/" || c == "^");
}

bool esAlfanumerica(const std::string &cadena) {
    for (char ch : cadena) {
        if (!std::isalnum(ch)) {
            return false;  // Si se encuentra un carácter no alfanumérico, retornamos false inmediatamente.
        }
    }
    return true;  // Si no se encontraron caracteres no alfanuméricos, la cadena es alfanumérica.
}

int getPrecedence(const std::string &c) {
    if (c == "^")
        return 3;
    else if (c == "*" || c == "/")
        return 2;
    else if (c == "+" || c == "-")
        return 1;
    else
        return 0;
}

std::string infixToPostfix(const std::string& infix) {
    std::string postfix = "";
    std::stack<std::string> operatorStack;

    std::stringstream ss(infix);
    std::string c;

    while (ss >> c){
        if (esAlfanumerica(c)) { // Si es un operando, añádelo a la expresión posfija
            postfix += c;
            postfix += " ";
        } else if (c == "(") { // Si es un paréntesis izquierdo, pushealo en la pila
            operatorStack.push(c);
        } else if (c == ")") { // Si es un paréntesis derecho, pop y añade a la expresión posfija hasta encontrar '('
            while (!operatorStack.empty() && operatorStack.top() != "(") {
                postfix += operatorStack.top();
                postfix += " ";
                operatorStack.pop();
            }
            if (!operatorStack.empty() && operatorStack.top() == "(") {
                operatorStack.pop();
            }
        } else if (isOperator(c)) { // Si es un operador
            while (!operatorStack.empty() && getPrecedence(c) <= getPrecedence(operatorStack.top())) {
                postfix += operatorStack.top();
                postfix += " ";
                operatorStack.pop();
            }
            operatorStack.push(c);
        }
    }

    // Vacía el resto de la pila a la expresión posfija
    while (!operatorStack.empty()) {
        postfix += operatorStack.top();
        postfix += " ";
        operatorStack.pop();
    }

    return postfix;
}

int calculatePostfix(const std::string &expresion) {
    std::stack<int> pila;
    std::istringstream ss(expresion);
    std::string token;

    while (ss >> token) {
        if (isdigit(token[0])) {
            pila.push(stod(token));
        } else if (isalpha(token[0])) {
            if (token == "ans") {
                pila.push(ans);
            } else if (variables.find(token) != variables.end()) {
                pila.push(variables[token]);
            } else {
                std::cerr << "Variable no definida: " << token << std::endl;
                return 0.0;
            }
        } else if (isOperator(token)){
            int operand2 = pila.top();
            pila.pop();
            int operand1 = pila.top();
            pila.pop();

            // Realizamos la operación y metemos el resultado de nuevo en la pila
            int resultado;
            switch (token[0]) {
                case '+':
                    resultado = operand1 + operand2;
                    break;
                case '-':
                    resultado = operand1 - operand2;
                    break;
                case '*':
                    resultado = operand1 * operand2;
                    break;
                case '/':
                    resultado = operand1 / operand2;
                    break;
                case '^':
                    resultado = pow(operand1,operand2);
                    break;
            }
            pila.push(resultado);
        }
    }

    // Al final, el resultado estará en la cima de la pila
    return pila.top();
}

void saveVariable(const std::string infixExpression){
    size_t pos = infixExpression.find('=');
    std::string variable = infixExpression.substr(0, pos - 1);
    std::string expression = infixExpression.substr(pos + 2);

    std::string postfix = infixToPostfix(expression);
    double result = calculatePostfix(postfix);

    variables[variable] = result;
    std::cout << variable << " = " << result << std::endl;
}

void calculate(const std::string expression){
    std::string postfixExpression = infixToPostfix(expression);
    last_operation = postfixExpression;
    ans = calculatePostfix(postfixExpression);
    std::cout << "ans: " << ans << std::endl;
}