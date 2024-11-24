defmodule Solution do
  def construct_recurrence_map(character, count_map) do
    cond do
      Map.has_key?(count_map, character) ->
        {count_map, Map.get(count_map, character)}
      true ->
        msize = map_size(count_map)+1
        {Map.put(count_map, character, msize), msize}
    end
  end

  def list_parser({char1, char2}, {map1, map2, track}) do
    {nmap1, nsize1} = construct_recurrence_map(char1, map1)
    {nmap2, nsize2} = construct_recurrence_map(char2, map2)
    cond do
      nsize1 == nsize2 ->
        {:cont, {nmap1, nmap2, track+1}}

      true ->
        {:halt, {nmap1, nmap2, track}}
    end
  end

  @spec is_isomorphic(s :: String.t, t :: String.t) :: boolean
  def is_isomorphic(s, t) do
    s = String.to_charlist(s)
    t = String.to_charlist(t)
    zip = Enum.zip(s,t)
    {_res1, _res2, track} = Enum.reduce_while(zip, {%{}, %{}, 0}, &list_parser/2)
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
