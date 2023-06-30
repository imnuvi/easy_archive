# https://leetcode.com/problems/check-if-it-is-a-straight-line/description/
# You are given an array coordinates, coordinates[i] = [x, y], where [x, y] represents the coordinate of a point. Check if these points make a straight line in the XY plane.

class Solution:
    def checkslope(self, pointa, pointb):
        ax = pointa[0]
        ay = pointa[1]
        bx = pointb[0]
        by = pointb[1]
        try:
            ans = (by-ay) / (bx - ax)
        except ZeroDivisionError:
            return "inf"
        return ans
        
    def checkStraightLine(self, coordinates: List[List[int]]) -> bool:
        firstslope = self.checkslope(coordinates[0] ,coordinates[1])
        for i in range(1, len(coordinates)):
            newslope = self.checkslope(coordinates[i], coordinates[i-1])
            print(newslope, firstslope)
            if newslope == firstslope:
                continue
            else:
                return False
        return True
