# You are given an array prices where prices[i] is the price of a given stock on the ith day.

# You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

# Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0

defmodule Solution do
  @spec max_profit(prices :: [integer]) :: integer
  def calc_max(price, curlist) do
    profit = curlist[:max] - curlist[:min]
    curprof = price - curlist[:min]

    cond do
      price < curlist[:min] ->
        curlist = Map.put(curlist, :min, price)
        curlist = Map.put(curlist, :max, price)
        curlist

      price > curlist[:max] ->
        curlist = Map.put(curlist, :max, price)

        cond do
          curprof > curlist[:final] ->
            curlist = Map.put(curlist, :final, curprof)

          true ->
            curlist
        end

      true ->
        curlist
    end
  end

  def max_profit(prices) do
    init = Enum.at(prices, 0)
    kwlist = %{max: init, min: init, final: 0}

    %{:final => final} =
      prices
      |> Enum.reduce(kwlist, &calc_max/2)

    final
  end
end
