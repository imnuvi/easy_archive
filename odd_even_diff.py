
n = int(input())
lst = list(map(int,input().split()))

eve = 0
odd = 0

for i in lst:
    if i%2 == 0:
        eve += i
    else:
        odd += i

print(odd-eve)
