#include "trees/tree.hpp"
#include "infix/infixToPostfix.hpp"
#include <iostream>
#include <string>
#include <stack>
#include <sstream>

namespace trees {

Tree::Tree(): root(nullptr) {

}

TreeNode* Tree::buildTreeFromPostfix(const std::string& postfix) {
	std::stack<TreeNode*> nodeStack;
	std::stringstream ss(postfix);
	std::string token;

	while (ss >> token) {
		if (esAlfanumerica(token)) { // Si es un operando, crea un nodo y apílalo
			TreeNode* operandNode = new TreeNode(token);
			nodeStack.push(operandNode);
		} else if (isOperator(token)) { // Si es un operador, crea un nodo y construye el árbol
			TreeNode* operatorNode = new TreeNode(token);
			TreeNode* rightOperand = nodeStack.top();
			nodeStack.pop();
			TreeNode* leftOperand = nodeStack.top();
			nodeStack.pop();
			operatorNode->setLeft(leftOperand);
			operatorNode->setRight(rightOperand);
			nodeStack.push(operatorNode);
		}
	}

	setRoot(nodeStack.top());
	return nodeStack.top(); // El nodo superior de la pila es la raíz del árbol
}

void Tree::setRoot(TreeNode* node){
	if (root == nullptr){
		root = node;
	}
}

void Tree::insert(TreeNode* child, TreeNode* parent){
	if (parent != nullptr){
		if (parent->getLeft()==nullptr){
			parent->setLeft(child);
		}
		else if (parent->getRight()==nullptr){
			parent->setRight(child);
		}
		else {
			std::cout << "El nodo padre ya tiene sus hijos ocupados" << std::endl;
		}
	}
}

void Tree::insert(std::string val, std::string val_parent){
	TreeNode* parent = find(val_parent);
	if (parent != nullptr){
		TreeNode* child = new TreeNode(val);
		insert(child, parent);
		std::cout << "insertado " << val << " in " << val_parent << " at " << parent << std::endl;
	}
}

TreeNode* Tree::find_rec(std::string val, TreeNode* node){
	TreeNode* ans = nullptr;
	if (node != nullptr){
		if (node->getData() == val){
			ans = node;
		}
		else{ 
			ans = find_rec(val, node->getLeft());
			if (ans==nullptr){
				ans = find_rec(val, node->getRight());
			}
		}
	}
	return ans;
}

TreeNode* Tree::find(std::string val){
	TreeNode* ans = find_rec(val, root);
	return ans;
}

void Tree::traverse_rec(TreeNode* node, int level){
	if (node != nullptr){
		std::cout << std::string(level*3, '-');
		std::cout << "("<< node->getData() << ")" << std::endl;
		traverse_rec(node->getLeft(),level + 1);
		traverse_rec(node->getRight(),level + 1);
	}
}

void Tree::traverse(){
	traverse_rec(root, 1);
}

Tree::~Tree() {
	delete root;
}

}