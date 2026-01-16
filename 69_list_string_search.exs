# https://leetcode.com/problems/string-matching-in-an-array/description/?envType=daily-question&envId=2025-01-07

defmodule Solution do
  @spec string_matching(words :: [String.t]) :: [String.t]
  def string_matching(words) do
    Enum.filter(strlist, fn x -> Enum.any?(strlist, fn y -> String.contains?(y, x) and x != y end) end)
  end
end
