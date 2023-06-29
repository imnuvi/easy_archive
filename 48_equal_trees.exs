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
  @spec is_same_tree(p :: TreeNode.t() | nil, q :: TreeNode.t() | nil) :: boolean
  def check_equality(nil, nil) do
    true
  end

  def check_equality(nil, node_b) do
    false
  end

  def check_equality(node_a, nil) do
    false
  end

  def check_equality(node_a, node_b) do
    cond do
      node_a.val == node_b.val and check_equality(node_a.left, node_b.left) and
          check_equality(node_a.right, node_b.right) ->
        true

      true ->
        false
    end
  end

  def is_same_tree(p, q) do
    check_equality(p, q)
  end
end
