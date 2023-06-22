# https://leetcode.com/problems/is-subsequence/description/
# Given two strings s and t, return true if s is a subsequence of t, or false otherwise.

# A subsequence of a string is a new string that is formed from the original string by deleting some (can be none) of the characters without disturbing the relative positions of the remaining characters. (i.e., "ace" is a subsequence of "abcde" while "aec" is not).


defmodule Solution do
  @spec is_subsequence(s :: String.t, t :: String.t) :: boolean
  def sub_fun(main_str, sub_str) do
    m_first = Enum.at(main_str, 0)
    s_first = Enum.at(sub_str, 0)
    cond do
        Enum.count(sub_str) == 0 ->
            true
        Enum.count(main_str) == 0 ->
            false
        m_first == s_first ->
            sub_fun(Enum.slice(main_str, 1..-1) , Enum.slice(sub_str, 1..-1) )
        true ->
            sub_fun(Enum.slice(main_str, 1..-1) , sub_str)
    end
  end

  def is_subsequence(s, t) do
    f_s = String.split(s, "", trim: true)
    f_t = String.split(t, "", trim: true)
    sub_fun(f_t, f_s)
  end
end
