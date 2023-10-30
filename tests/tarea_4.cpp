#include <iostream>
#include <string>
#include <sstream>
#include <map>

#include "infix/infixToPostfix.hpp"
#include "trees/tree.hpp"

int main() {
    std::cout << "******** CALCULADORA INTERACTIVA ********" << std::endl;
    
    while(true){
        std::string expression;
        std::cout << "$ ";
        std::getline(std::cin, expression);
        if (expression == "FIN" || expression == "fin"){
            break;
        };

        if (expression.find('=') != std::string::npos) {
            saveVariable(expression);
        } else if ((expression.find('+') != std::string::npos)||(expression.find('-') != std::string::npos)||(expression.find('*') != std::string::npos)||(expression.find('/') != std::string::npos)||(expression.find('^') != std::string::npos)) {
            calculate(expression);
        } else if (expression=="tree" || expression=="TREE") {
            trees::Tree tree;
            tree.buildTreeFromPostfix(last_operation);
            tree.traverse();
        } else if (expression == "ans" || expression == "ANS") {
            std::cout << ans << std::endl;
        } else if (variables.find(expression) != variables.end()) {
            std::cout << variables[expression] << std::endl;
        } else {
            std::cerr << "La variable: " << expression << " no esta definida, o la operacion que estas intentando hacer es incorrecta." << std::endl;
        }
    }
    
    tree.buildTreeFromPostfix(last_operation);
    tree.traverse();
    return 0;
}
