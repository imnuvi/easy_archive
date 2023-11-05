defmodule Solution do
  @spec roman_to_int(s :: String.t()) :: integer

  def logic([], _, ans) do
    ans
  end

  def logic([a], map, ans) do
    IO.inspect(a)
    ans + Map.get(map, a)
  end

  def logic(lss, map, ans) do
    key1 = Enum.at(lss, 0)
    key2 = Enum.at(lss, 1)
    IO.inspect(key1)
    IO.inspect(key2)

    val1 = Map.get(map, key1)
    val2 = Map.get(map, key2)
    IO.inspect(val1)
    IO.inspect(val2)

    cond do
      val1 > val2 ->
        ans = ans + val1
        logic(Enum.slice(lss, 1..-1), map, ans)

      val2 > val1 ->
        ans = ans + val2 - val1
        logic(Enum.slice(lss, 2..-1), map, ans)

      val1 == val2 ->
        ans = ans + val1
        logic(Enum.slice(lss, 1..-1), map, ans)
    end
  end

  # def roman(lss) do
  #   roman_map = %{:I => 1, :V => 5, :X => 10, :L => 50, :C => 100, :D => 500, :M => 1000}
  #   key1 = Enum.at(lss, 0)
  #   key2 = Enum.at(lss, 1)
  #   # logic(key1, key2, roman_map, ans, subval)
  #   IO.inspect(roman_map)
  # end

  def roman_to_int(s) do
    roman_map = %{"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000}
    # IO.inspect(String.to_charlist(s))
    # IO.inspect(String.graphemes(s))
    # IO.inspect(String.split(String.strip(s), ""))

    lss =
      String.graphemes(s)
      |> logic(roman_map, 0)

    IO.inspect(lss)
  end
end

Solution.roman_to_int("MCMXCIV")
