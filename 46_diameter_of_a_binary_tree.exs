# https://leetcode.com/problems/diameter-of-binary-tree/description/
# Given the root of a binary tree, return the length of the diameter of the tree.

# The diameter of a binary tree is the length of the longest path between any two nodes in a tree. This path may or may not pass through the root.

# The length of a path between two nodes is represented by the number of edges between them.
# #
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
  @spec diameter_of_binary_tree(root :: TreeNode.t | nil) :: integer
  def calc_diameter(nil) do
    {0, 0}
  end
  def calc_diameter(node) do
    { ldia, lcur_diameter } = calc_diameter(node.left)
    { rdia, rcur_diameter } = calc_diameter(node.right)
    {max(ldia, rdia) + 1, max(max( rcur_diameter, lcur_diameter) , ldia + rdia )}
  end
  def diameter_of_binary_tree(root) do
    { _, ans } = calc_diameter(root)
    ans
  end
end
