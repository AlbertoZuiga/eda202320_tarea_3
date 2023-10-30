#include "trees/treeNode.hpp"
#include <string>

namespace trees {

TreeNode::TreeNode(): parent(nullptr), data(""), left_children(nullptr), right_children(nullptr) {
}

TreeNode::TreeNode(std::string val): parent(nullptr), data(val), left_children(nullptr), right_children(nullptr) {
}

void TreeNode::setParent(TreeNode* node){
	parent = node;
}
void TreeNode::setData(std::string val){
	data = val;
}
void TreeNode::setLeft(TreeNode* left){
	left_children = left;
}
void TreeNode::setRight(TreeNode* right){
	right_children = right;
}
TreeNode* TreeNode::getParent(){
	return parent;
}
std::string TreeNode::getData(){
	return data;
}
TreeNode* TreeNode::getLeft(){
	return left_children;
}
TreeNode* TreeNode::getRight(){
	return right_children;
}

TreeNode::~TreeNode() {
	if (left_children != nullptr){
		delete left_children;
	}
	if (right_children != nullptr){
		delete right_children;
	}
}

} 
