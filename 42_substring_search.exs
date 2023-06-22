
# https://leetcode.com/problems/find-the-index-of-the-first-occurrence-in-a-string/submissions/976971056/
# Given two strings needle and haystack, return the index of the first occurrence of needle in haystack, or -1 if needle is not part of haystack.


defmodule Solution do
  @spec str_str(haystack :: String.t, needle :: String.t) :: integer
  def str_str(haystack, needle) do
    try do
      {ind, _} = :binary.match(haystack, needle)
      ind
    rescue
      e in MatchError -> -1
    end
  end
end
