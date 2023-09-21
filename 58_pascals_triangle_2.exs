# https://leetcode.com/problems/pascals-triangle-ii/

# Given an integer rowIndex, return the rowIndexth (0-indexed) row of the Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

defmodule Solution do
  @spec get_row(row_index :: integer) :: [integer]
  def compress([_]) do
    []
  end

  def compress(nums) do
    [Enum.at(nums, 0) + Enum.at(nums, 1)] ++ compress(Enum.slice(nums, 1..-1))
  end

  def pascal(0) do
    [1]
  end

  def pascal(1) do
    [1, 1]
  end

  def pascal(n) do
    pascal_inner = compress(pascal(n - 1))

    [1] ++ pascal_inner ++ [1]
  end

  def get_row(row_index) do
    pascal(row_index)
  end
end
