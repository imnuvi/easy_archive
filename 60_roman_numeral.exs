# https://leetcode.com/problems/roman-to-integer/
# Roman numerals are represented by seven different symbols: I, V, X, L, C, D and M.

# Symbol       Value
# I             1
# V             5
# X             10
# L             50
# C             100
# D             500
# M             1000
# For example, 2 is written as II in Roman numeral, just two ones added together. 12 is written as XII, which is simply X + II. The number 27 is written as XXVII, which is XX + V + II.

# Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX. There are six instances where subtraction is used:

defmodule Solution do
  @spec roman_to_int(s :: String.t()) :: integer

  def logic([], _, ans) do
    ans
  end

  def logic([a], map, ans) do
    ans + Map.get(map, a)
  end

  def logic(lss, map, ans) do
    key1 = Enum.at(lss, 0)
    key2 = Enum.at(lss, 1)

    val1 = Map.get(map, key1)
    val2 = Map.get(map, key2)

    cond do
      val1 > val2 ->
        ans = ans + val1
        logic(Enum.slice(lss, 1..-1), map, ans)

      val2 > val1 ->
        ans = ans + val2 - val1
        logic(Enum.slice(lss, 2..-1), map, ans)

      val1 == val2 ->
        ans = ans + val1
        logic(Enum.slice(lss, 1..-1), map, ans)
    end
  end

  def roman_to_int(s) do
    roman_map = %{"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}

    lss =
      String.graphemes(s)
      |> logic(roman_map, 0)
  end
end

Solution.roman_to_int("MCMXCIV")
