# given a range of numbers, create a list with all unique numbers, such that if an even number is added if half of it is not in the list already

n,x,y = list(map(int,input().split()))

def eve(n,lst):
    if (n//2) in lst:
        return 0
    else:
        return 1

thel = []
for i in range(x,y+1):
    if len(thel)>=n:
        break
    else:
        if i not in thel:
            thel.append(i)
        if i%2==0 and eve(i,thel):
            thel.append(i//2)
        else:
            continue
if len(thel)<n:
    print(-1)
else:
    print(sum(thel))
