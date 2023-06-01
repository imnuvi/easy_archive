# Given an integer array nums where the elements are sorted in ascending order, convert it to a height-balanced binary search tree.


class TreeNode:
    def __init__(self, val=0, left=None, right=None):
        self.val = val
        self.left = left
        self.right = right

def solve(sorted_list):
    listlen = len(sorted_list)
    if listlen == 1:
        return TreeNode(val=sorted_list[0])
    elif listlen <= 0:
        return None
    mid = listlen//2
    val = sorted_list[mid]
    lsub = solve(sorted_list[:mid])
    rsub = solve(sorted_list[mid+1:])
    return TreeNode(val=val, left=lsub, right=rsub)

class Solution:
    def sortedArrayToBST(self, nums: List[int]) -> Optional[TreeNode]:
        return solve(nums)
