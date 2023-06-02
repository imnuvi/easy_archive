# A phrase is a palindrome if, after converting all uppercase letters into lowercase letters and removing all non-alphanumeric characters, it reads the same forward and backward. Alphanumeric characters include letters and numbers.

# Given a string s, return true if it is a palindrome, or false otherwise.



defmodule Solution do
  @spec is_palindrome(s :: String.t) :: boolean

  def is_pal(s) do
    len = String.length(s)
    cond do
      len == 2 ->
        String.at(s, 0) == String.at(s, -1)
      len <= 1 ->
        true
      len > 2 ->
        cond do
          String.at(s, 0) == String.at(s, -1) ->
            is_pal(String.slice(s, 1..-2))
          true ->
            false
        end
    end
  end

  def is_palindrome(s) do
    my_regex = ~r/[^a-zA-Z0-9]/
    res = s 
        |> String.replace(my_regex, "")
        |> String.downcase
        |> String.to_charlist
    res == Enum.reverse(res)
  end
end
