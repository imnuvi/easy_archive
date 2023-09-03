# https://leetcode.com/problems/valid-anagram/
# Given two strings s and t, return true if t is an anagram of s, and false otherwise.

# An Anagram is a word or phrase formed by rearranging the letters of a different word or phrase, typically using all the original letters exactly once.

defmodule Solution do
  @spec is_anagram(s :: String.t(), t :: String.t()) :: boolean

  def put_in_map(mychar, mymap) do
    cond do
      is_map_key(mymap, mychar) ->
        Map.put(mymap, mychar, Map.get(mymap, mychar) + 1)

      true ->
        Map.put_new(mymap, mychar, 1)
    end
  end

  def pop_in_map(mychar, mymap) do
    cond do
      is_map_key(mymap, mychar) ->
        gotten = Map.get(mymap, mychar)

        cond do
          gotten == 1 ->
            {popped, newmap} = Map.pop(mymap, mychar)
            newmap

          true ->
            Map.put(mymap, mychar, gotten - 1)
        end

      true ->
        mymap
    end
  end

  def construct_map(phrase) do
    Enum.reduce(phrase, %{}, &put_in_map/2)
  end

  def fetch_map(phrase, checkmap) do
    Enum.reduce(phrase, checkmap, &pop_in_map/2)
  end

  def is_anagram(s, t) do
    smap =
      String.to_charlist(s)
      |> construct_map

    res =
      String.to_charlist(t)
      |> fetch_map(smap)

    res == %{}
  end
end
