a = list(map(int,input().split()))

newl = list(set(a))
newl.sort()

if len(newl == 1):
    print(2*newl[0],end="")
elif len(newl == 2):
    print(newl[0]+newl[1],end="")
else:
    print(newl[1] + newl[-2],end="")
 
