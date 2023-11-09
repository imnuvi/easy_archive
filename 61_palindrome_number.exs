
# https://leetcode.com/problems/palindrome-number/description/

# Given an integer x, return true if x is a palindrome , and false otherwise.

defmodule Solution do
  @spec is_palindrome(x :: integer) :: boolean
  def check_vals(x) do
    len = String.length(x)
    cond do
      len > 1 ->
        start_num = String.at(x, 0)
        end_num = String.at(x, -1)
        cond do
            start_num == end_num ->
              check_vals(String.slice(x, 1..-2))
            true ->
              false
        end
      len == 1 || len == 0 ->
        true
      true ->
        false
    end
  end

  def is_palindrome(x) do
    Integer.to_string(x) |>
      check_vals
  end
end
