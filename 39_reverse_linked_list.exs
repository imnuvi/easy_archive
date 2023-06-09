# Given the head of a singly linked list, reverse the list, and return the reversed list.
#
#
# defmodule ListNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           next: ListNode.t() | nil
#         }
#   defstruct val: 0, next: nil
# end

defmodule Solution do

  @spec reverse_list(head :: ListNode.t | nil) :: ListNode.t | nil
  def rev(node, next) when node == nil do
    IO.inspect node
    next
  end
  def rev(node, next) do
    argl = [val: node.val, next: next ]
    rev(node.next, struct(ListNode, argl))
  end

  def reverse_list(head) do
    rev(head, nil)
  end
end
