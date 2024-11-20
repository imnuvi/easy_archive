# https://leetcode.com/problems/single-number/description/

# Given a non-empty array of integers nums, every element appears twice except for one. Find that single one.
# You must implement a solution with a linear runtime complexity and use only constant extra space.

# Example 1:

# Input: nums = [2,2,1]
# Output: 1
# Example 2:

# Input: nums = [4,1,2,1,2]
# Output: 4
# Example 3:

# Input: nums = [1]
# Output: 1

defmodule Solution do

  def check_neighbours([x]) do
    x
  end

  def check_neighbours(sorted_list) do
    # Optimised for time
    x = Enum.at(sorted_list, 0)
    y = Enum.at(sorted_list, 1)
    cond do
      x-y == 0 ->
        check_neighbours(Enum.slice(sorted_list, 2..-1//1))
      true ->
        x
    end
  end

  def set_checker(elem, accset) do
    cond do
      MapSet.member?(accset, elem) ->
        MapSet.delete(accset, elem)
      true ->
        MapSet.put(accset, elem)
    end
  end

  @spec single_number(nums :: [integer]) :: integer
  def single_number(nums) do

    # time opitimized
    accset = Enum.reduce(nums, MapSet.new(), &set_checker/2)
    Enum.at(accset, 0)

    # space optimized
    sorted_nums = Enum.sort(nums)
    check_neighbours(sorted_nums)
  end
end

IO.inspect(Solution.single_number([1,1,9,9,3,4,5,3,4]))
