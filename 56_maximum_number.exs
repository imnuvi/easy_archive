# https://leetcode.com/problems/majority-element/
# Given an array nums of size n, return the majority element.

# The majority element is the element that appears more than ⌊n / 2⌋ times. You may assume that the majority element always exists in the array.

defmodule Solution do
  @spec majority_element(nums :: [integer]) :: integer

  def logic(elem, acc) do
    {num, count} = acc

    cond do
      count == 0 ->
        {elem, 1}

      num == elem ->
        {elem, count + 1}

      num != elem ->
        {num, count - 1}
    end
  end

  def count_elem(nums) do
    Enum.reduce(nums, {-1, 0}, &logic/2)
  end

  def majority_element(nums) do
    {ans, _} = count_elem(nums)
    ans
  end
end
