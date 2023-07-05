# https://leetcode.com/problems/product-of-array-except-self/
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

defmodule Solution do
  @spec product_except_self(nums :: [integer]) :: [integer]
  def calc_prod(arr, ind) when length(arr) - ind == 1 do
    larr = Enum.slice(arr, 0..-2)
    lval = Enum.reduce(larr, fn x, acc -> x * acc end)
    [lval]
  end

  def calc_prod(arr, 0) do
    rarr = Enum.slice(arr, 1..-1)
    rval = Enum.reduce(rarr, fn x, acc -> x * acc end)
    [rval] ++ calc_prod(arr, 1)
  end

  def calc_prod(arr, ind) do
    larr = Enum.slice(arr, 0..(ind - 1))
    rarr = Enum.slice(arr, (ind + 1)..-1)

    lval = Enum.reduce(larr, fn x, acc -> x * acc end)
    rval = Enum.reduce(rarr, fn x, acc -> x * acc end)

    [lval * rval] ++ calc_prod(arr, ind + 1)
  end

  def product_except_self(nums) do
    calc_prod(nums, 0)
  end
end
