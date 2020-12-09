# given a matrix dimensions find the total number of paths from the top left corner to the bottom right corner

def paths(m,n):
    if (m==1 or n==1):
        return 1
    else:
        return paths(m-1,n) + paths(m,n-1)

m,n = list(map(int,input().split()))
print(paths(m,n))

# m is columns, n is rows
# the way to solve this problem is by defining the base case where if either m or n is one there is only one path.
# then the next observation is that for a m X n matrix, the paths are the sum of paths in  (m-1 X n) and (m X n-1).
