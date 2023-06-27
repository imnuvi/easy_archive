# https://leetcode.com/problems/balanced-binary-tree/description/
# Given a binary tree, determine if it is height-balanced
# A height-balanced binary tree is a binary tree in which the depth of the two subtrees of every node never differs by more than one.

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
  @spec is_balanced(root :: TreeNode.t() | nil) :: boolean
  def check_one_diff(x, y) do
    abs(x - y) <= 1
  end

  def balancer(nil) do
    {0, false}
  end

  def balancer(node) do
    {le, lcase} = balancer(node.left)
    {ri, rcase} = balancer(node.right)

    cond do
      {lcase || rcase} ->
        {0, false}

      true ->
        cond do
          check_one_diff(le, ri) ->
            {max(le, ri) + 1, true}

          true ->
            {0, false}
        end
    end
  end

  def is_balanced(root) do
    {_, res} = balancer(root)
    res
  end
end
