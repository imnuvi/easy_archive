# https://leetcode.com/problems/pascals-triangle/

# Given an integer numRows, return the first numRows of Pascal's triangle.

# In Pascal's triangle, each number is the sum of the two numbers directly above it as shown:

defmodule Solution do
  @spec generate(num_rows :: integer) :: [[integer]]

  def reductor(current, %{res: res, prev: prev}) do
    nres = res ++ [current + prev]
    nprev = current
    %{res: nres, prev: nprev}
  end

  def calc_list(lss) do
    acc_map = %{res: [], prev: 0}
    %{res: res, prev: _} = Enum.reduce(lss, acc_map, &reductor/2)
    res
  end

  def recurse_triangle(lss, n, target) do
    cond do
      n == target ->
        [lss]

      n == 1 ->
        ncalc_list = calc_list(lss) ++ [1]
        [[1]] ++ recurse_triangle(ncalc_list, n + 1, target)

      true ->
        ncalc_list = calc_list(lss) ++ [1]
        [lss] ++ recurse_triangle(ncalc_list, n + 1, target)
    end
  end

  def generate(num_rows) do
    recurse_triangle([1], 1, num_rows)
  end
end

IO.inspect(Solution.generate(6))
