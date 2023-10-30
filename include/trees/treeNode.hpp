#ifndef TREENODE_HPP_
#define TREENODE_HPP_

#include <string>

namespace trees {

class TreeNode {
private:
	TreeNode* parent;
	std::string data; //data can be of any type
	TreeNode* left_children;
	TreeNode* right_children;
public:
	TreeNode();
	TreeNode(std::string val);
	void setParent(TreeNode* node);
	void setData(std::string val);
	void setLeft(TreeNode* left);
	void setRight(TreeNode* right);
	TreeNode* getParent();
	std::string getData();
	TreeNode* getLeft();
	TreeNode* getRight();
	virtual ~TreeNode();
};

} /* namespace trees */

#endif /* TREENODE_HPP_ */
