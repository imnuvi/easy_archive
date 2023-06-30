# https://leetcode.com/problems/subtree-of-another-tree/submissions/982865920/
# Given the roots of two binary trees root and subRoot, return true if there is a subtree of root with the same structure and node values of subRoot and false otherwise.

# A subtree of a binary tree tree is a tree that consists of a node in tree and all of this node's descendants. The tree tree could also be considered as a subtree of itself.

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
  @spec is_subtree(root :: TreeNode.t() | nil, sub_root :: TreeNode.t() | nil) :: boolean
  def create_hash(nil, _) do
    {"_", false}
  end

  def create_hash(node, check) do
    {hashl, equall} = create_hash(node.left, check)
    {hashr, equalr} = create_hash(node.right, check)
    val = to_string(node.val) <> hashl <> hashr

    cond do
      equall or equalr or val == check ->
        {val, true}

      true ->
        {val, false}
    end
  end

  def is_subtree(root, sub_root) do
    {sub_tree_hash, _} = create_hash(sub_root, nil)
    {_, ans} = create_hash(root, sub_tree_hash)
    ans
  end
end
