# https://leetcode.com/problems/product-of-array-except-self/
# Given an integer array nums, return an array answer such that answer[i] is equal to the product of all the elements of nums except nums[i].

class Solution:
    def productExceptSelf(self, nums: List[int]) -> List[int]:
      tmp = 1
      ans = []
      for i in range(len(nums)):
         ans.append(tmp)
         val = nums[i]
         tmp = val*tmp
      tmp = 1
      for j in range(len(nums)-1, -1, -1):
         ans[j] = ans[j] * tmp
         val2 = nums[j]
         tmp = val2*tmp
      return ans