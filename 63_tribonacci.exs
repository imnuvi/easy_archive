# https://leetcode.com/problems/n-th-tribonacci-number/?envType=problem-list-v2&envId=dynamic-programming

# The Tribonacci sequence Tn is defined as follows:
# T0 = 0, T1 = 1, T2 = 1, and Tn+3 = Tn + Tn+1 + Tn+2 for n >= 0.
# Given n, return the value of Tn.


defmodule Solution do
  def solver(solved, 0) do
    solved
  end

  def solver(solved, n) do
    # can be more effcient with just three variables instead of an entire array
    tribo_len = Enum.count(solved)
    trib = Enum.sum(Enum.slice(solved, tribo_len-3..tribo_len))
    n_solved = solved ++ [trib]
    solver(n_solved, n-1)
  end

  @spec tribonacci(n :: integer) :: integer
  def tribonacci(n) do
    inlist = [0, 1, 1]
    solved = solver(inlist, n-(Enum.count(inlist)-1))
    Enum.at(solved, Enum.count(solved)-1)
  end
end

IO.inspect(Solution.tribonacci(4))
