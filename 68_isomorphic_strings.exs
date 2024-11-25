# https://leetcode.com/problems/isomorphic-strings/description/

# Given two strings s and t, determine if they are isomorphic.

# Two strings s and t are isomorphic if the characters in s can be replaced to get t.

# All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character, but a character may map to itself.


defmodule Solution do
  def list_parser({char1, char2}, {map, track}) do
    cond do
      Map.has_key?(map, char1) ->
        cond do
          char2 == Map.get(map, char1) ->
            {:cont, {map, track+1}}
          true ->
            {:halt, {map, track}}
          end
      true ->
        cond do
          Enum.member?(Map.values(map), char2) ->
            {:halt, {map, track}}
          true ->
            {:cont, {Map.put(map, char1, char2), track+1}}
        end
    end
  end

  @spec is_isomorphic(s :: String.t, t :: String.t) :: boolean
  def is_isomorphic(s, t) do
    s = String.to_charlist(s)
    t = String.to_charlist(t)
    zip = Enum.zip(s,t)
    {_res1, track} = Enum.reduce_while(zip, {%{}, 0}, &list_parser/2)
    cond do
      track == Enum.count(s) ->
        true
      true ->
        false
    end
  end
end

IO.puts(Solution.is_isomorphic("eggppppp", "addpppgp"))
IO.puts(Solution.is_isomorphic("egg", "add"))
IO.puts(Solution.is_isomorphic("foo", "bar"))
IO.puts(Solution.is_isomorphic("paper", "title"))
