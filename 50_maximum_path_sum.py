# https://leetcode.com/problems/binary-tree-maximum-path-sum/
# A path in a binary tree is a sequence of nodes where each pair of adjacent nodes in the sequence has an edge connecting them. A node can only appear in the sequence at most once. Note that the path does not need to pass through the root.

# The path sum of a path is the sum of the node's values in the path.

# Given the root of a binary tree, return the maximum path sum of any non-empty path.

# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    def calculate_sum(self, node):
        if node == None:
            return (0, 0)
        else:
            lval, lmax = self.calculate_sum(node.left)
            rval, rmax = self.calculate_sum(node.right)
            node_max_len = node.val + max(lval, rval)
            total_max_len = max(lmax, rmax, lval + rval + node.val)
            return (node_max_len, total_max_len)

    def maxPathSum(self, root: Optional[TreeNode]) -> int:
        _, total_max = self.calculate_sum(root)
        return total_max