# https://leetcode.com/problems/maximum-depth-of-binary-tree/submissions/979525417/
# Given the root of a binary tree, return its maximum depth.

# A binary tree's maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

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
  @spec max_depth(root :: TreeNode.t() | nil) :: integer
  def calc_depth(nil, val) do
    val
  end

  def calc_depth(node, val) do
    curmax = max(calc_depth(node.left, val + 1), calc_depth(node.right, val + 1))
    curmax
  end

  def max_depth(root) do
    calc_depth(root, 0)
  end
end
