#defmodule Solution do
  #@spec search(nums :: [integer], target :: integer) :: integer
  #def midindex(arr) do
    #arr_len = length(arr)
    #cond do
        #arr_len == 0 ->
            #-1
        #rem(arr_len, 2) == 0 ->
            #floor(arr_len/2)
        #rem(arr_len, 2) == 1 ->
            #floor(arr_len/2) + 1
    #end
  #end
  #
  #def bin(lis, target, pos) do
    #arr_len = length(lis)
    #mid = midindex(lis)
    #IO.puts mid
    #midval = Enum.at(lis, mid - 1)
    ## IO.puts midval
    #cond do
        #mid == -1 ->
            #-1
        #midval == target ->
            #pos
        #target < midval ->
            #bin(Enum.take(lis, mid-1), target, pos - mid)
        #target > midval ->
            #bin(Enum.take(lis, -mid), target, pos + mid)
    #end
  #end
  #
  #def search(nums, target) do
    #bin(nums, target, midindex(nums))
  #end
#end
#
#
#



