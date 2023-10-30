#ifndef INFIX_TO_POSTFIX_HPP_
#define INFIX_TO_POSTFIX_HPP_

#include <string>
#include <map>

extern std::map<std::string, double> variables;
extern double ans;
extern std::string last_operation;

bool isOperator(const std::string &c);
bool esAlfanumerica(const std::string &cadena);
int getPrecedence(const std::string &c);
std::string infixToPostfix(const std::string& infix);
int calculatePostfix(const std::string &expresion);
void saveVariable(const std::string infixExpression);
void calculate(const std::string expression);

#endif