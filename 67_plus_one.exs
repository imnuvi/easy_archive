# https://leetcode.com/problems/plus-one/

# You are given a large integer represented as an integer array digits, where each digits[i] is the ith digit of the integer. The digits are ordered from most significant to least significant in left-to-right order. The large integer does not contain any leading 0's.

# Increment the large integer by one and return the resulting array of digits.



defmodule Solution do

  def parse_int(x) do
    {parsed, _} = Integer.parse(x)
    parsed
  end

  @spec plus_one(digits :: [integer]) :: [integer]
  def plus_one(digits) do
    x = Enum.join(digits, "")
    {y, _} = Integer.parse(x)
    z = Integer.to_string(y + 1)
    String.graphemes(z)
    |> Enum.map(fn x -> parse_int(x) end)
  end
end


IO.inspect(Solution.plus_one([4,3,2,2]))
