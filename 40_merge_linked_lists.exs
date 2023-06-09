#You are given the heads of two sorted linked lists list1 and list2.

#Merge the two lists in a one sorted list. The list should be made by splicing together the nodes of the first two lists.
#
#Return the head of the merged linked list.
#
#
# Definition for singly-linked list.
#
# defmodule ListNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           next: ListNode.t() | nil
#         }
#   defstruct val: 0, next: nil
# end

defmodule Solution do
  @spec merge_two_lists(list1 :: ListNode.t | nil, list2 :: ListNode.t | nil) :: ListNode.t | nil
  def merge(list1, list2) when list1 == nil do
    list2
  end
  def merge(list1, list2) when list2 == nil do
    list1
  end
  def merge(list1, list2) when list1.val < list2.val do
    argsl = [val: list1.val, next: merge(list1.next, list2)]
    struct(ListNode, argsl)
  end
  def merge(list1, list2) when list1.val >= list2.val do
    argsl = [val: list2.val, next: merge(list1, list2.next)]
    struct(ListNode, argsl)
  end
  def merge_two_lists(list1, list2) do
    merge(list1, list2)
  end
end
