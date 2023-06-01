# Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.


require Enum
require IO

defmodule TreeNode do
  @type t :: %__MODULE__{
          val: integer,
          left: TreeNode.t() | nil,
          right: TreeNode.t() | nil
        }
  defstruct val: 0, left: nil, right: nil
end

defmodule Solution do
  @spec sorted_array_to_bst(nums :: [integer]) :: TreeNode.t | nil
  def solve(arr) do
    arr_len = length(arr)
    cond do
        arr_len == 1 ->
            ret = struct(TreeNode, val: Enum.at(arr, 0))
        arr_len <= 0 ->
            ret = nil
        arr_len > 1 ->
            mid = floor(arr_len/2)
            val = Enum.at(arr, mid)
            cond do
                rem(arr_len, 2) == 0 ->
                    lsub = solve(Enum.take(arr, mid))
                    rsub = solve(Enum.take(arr, -mid+1))
                    opts = [val: val, left: lsub, right: rsub]
                    ret = struct(TreeNode, opts)
                rem(arr_len, 2) != 0 ->
                    lsub = solve(Enum.take(arr, mid))
                    rsub = solve(Enum.take(arr, -mid))
                    opts = [val: val, left: lsub, right: rsub]
                    ret = struct(TreeNode, opts)
            end

    end
  end

  def sorted_array_to_bst(nums) do
    solve(nums)
  end
end
