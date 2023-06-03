#defmodule Solution do
  #@spec is_valid(s :: String.t) :: boolean
  #def stack_construct(value, stack) do
    #paran_map = %{")" => "(", "]" => "[" , "}" => "{"}
    ## state, head = Structure.Stack.head(stack)
    #case Structure.Stack.head(stack) do
        #{:ok, head} ->
            #cond do
                #head == Map.fetch(paran_map, value) ->
                    #{_ , stack} = Structure.Stack.pop()
                    #{value, stack}
                #true ->
                    #{value, Structure.Stack.push(stack, value)}
            #end
        #{:error, :empty_stack} ->
            #{value, Structure.Stack.push(stack, value)}
    #end
  #end
  #
  #def is_valid(s) do
    #acc_stack = []
    #s
        #|> String.to_charlist
        #|> Enum.map_reduce(acc_stack, &stack_construct/2)
  #end
#end







defmodule Solution do
  @spec is_valid(s :: String.t) :: boolean
  def stack_construct(value, stackl) do
    IO.inspect stackl
    IO.inspect value
    paran_map = %{")" => "(", "]" => "[" , "}" => "{" , "(" => ",", "[" => ",", "{" => ","}
    dict_val = paran_map[value]
    IO.inspect dict_val
    cond do
        Enum.count(stackl) >= 1 ->
            cond do
                Enum.at(stackl, -1) == dict_val ->
                  {value, List.delete_at(stackl, length(stackl)-1)}
                true ->
                  {value, stackl ++ [value]}
            end
        true ->
            {value, stackl ++ [value]}
    end
  end

  def is_valid(s) do
    acc_stack = []
    {vals, acc} = s
        |> String.split("", trim: true)
        |> Enum.map_reduce(acc_stack, &stack_construct/2)
    !(Enum.count(acc) >= 1)
  end
end
