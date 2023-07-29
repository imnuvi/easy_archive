# https://leetcode.com/problems/climbing-stairs/?envType=study-plan-v2&envId=dynamic-programming
# You are climbing a staircase. It takes n steps to reach the top.

# Each time you can either climb 1 or 2 steps. In how many distinct ways can you climb to the top?

defmodule Solution do
  @spec climb_stairs(n :: integer) :: integer

  def count_ways(n, memomap) when n < 1 do
    {0, memomap}
  end

  def count_ways(n, memomap) do
    IO.inspect(memomap)

    cond do
      is_map_key(memomap, n) ->
        {memomap[n], memomap}

      true ->
        {step_1, s1_map} = count_ways(n - 1, memomap)
        {step_2, s2_map} = count_ways(n - 2, s1_map)
        calc_ans = step_1 + step_2
        newmap = Map.put(s2_map, n, calc_ans)
        {calc_ans, newmap}
    end
  end

  def climb_stairs(n) do
    {ans, _} = count_ways(n, %{1 => 1, 2 => 2, 3 => 3})
    ans
  end
end
