# https://leetcode.com/problems/search-insert-position/description/

# Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

# You must write an algorithm with O(log n) runtime complexity.

# Example 1:

# Input: nums = [1,3,5,6], target = 5
# Output: 2
# Example 2:

# Input: nums = [1,3,5,6], target = 2
# Output: 1
# Example 3:

# Input: nums = [1,3,5,6], target = 7
# Output: 4

defmodule Solution do

  def searcher(_elem, []) do
    0
  end

  def searcher(elem, [search | reslist]) when elem <= search do
    Enum.count(reslist) + 1
  end

  def searcher(elem, [_search | reslist]) do
    searcher(elem, reslist)
  end

  @spec search_insert(nums :: [integer], target :: integer) :: integer
  def search_insert(nums, target) do
    Enum.count(nums) - searcher(target, nums)
  end
end

IO.inspect(Solution.search_insert([1,3,5,6], 5))
IO.inspect(Solution.search_insert([1,3,5,6], 2))
IO.inspect(Solution.search_insert([1,3,5,6], 7))
