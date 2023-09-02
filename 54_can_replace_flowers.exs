# You have a long flowerbed in which some of the plots are planted, and some are not. However, flowers cannot be planted in adjacent plots.

# Given an integer array flowerbed containing 0's and 1's, where 0 means empty and 1 means not empty, and an integer n, return true if n new flowers can be planted in the flowerbed without violating the no-adjacent-flowers rule and false otherwise.

defmodule Solution do
  @spec can_place_flowers(flowerbed :: [integer], n :: integer) :: boolean
  # acc = {total_spaces, empty, valid}
  def check_empty(_, acc = %{total_spaces: total_spaces, empty: empty, valid: false}) do
    IO.inspect(acc)
    %{total_spaces: total_spaces, empty: false, valid: false}
  end

  def check_empty(1, acc) do
    IO.inspect(acc)
    %{total_spaces: total_spaces, empty: empty, valid: valid} = acc
    %{total_spaces: total_spaces, empty: false, valid: true}
  end

  def check_empty(0, acc) do
    IO.inspect(acc)
    %{total_spaces: total_spaces, empty: empty, valid: valid} = acc

    case empty do
      false ->
        %{total_spaces: total_spaces, empty: true, valid: true}

      true ->
        %{total_spaces: total_spaces + 1, empty: false, valid: false}
    end
  end

  def place(flowerbed) do
    aggr = Enum.reduce(flowerbed, %{total_spaces: 0, empty: true, valid: true}, &check_empty/2)
    IO.inspect(aggr)
    aggr
  end

  def can_place_flowers(flowerbed, n) do
    %{total_spaces: spaces, empty: _, valid: valid} = place(flowerbed)

    cond do
      n <= spaces and valid ->
        true

      true ->
        false
    end
  end
end
