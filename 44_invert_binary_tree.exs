# https://leetcode.com/problems/invert-binary-tree/description/ 
# Given the root of a binary tree, invert the tree, and return its root.


# Definition for a binary tree node.
#
# defmodule TreeNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           left: TreeNode.t() | nil,
#           right: TreeNode.t() | nil
#         }
#   defstruct val: 0, left: nil, right: nil
# end

defmodule Solution do
  @spec invert_tree(root :: TreeNode.t | nil) :: TreeNode.t | nil
  def inverter(nil) do
    nil
  end
  def inverter(node) do
    lnode = node.left
    rnode = node.right
    argsl = [val: node.val, left: inverter(node.right), right: inverter(node.left)]
    struct(TreeNode, argsl)
  end
  def invert_tree(root) do
    inverter(root)
  end
end
