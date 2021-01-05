
a = int(input())

start = 3
ssum = 2
lst = [3]

for i in range(2,a):
    val = 2**i
    lst.extend([val+(2**j) for j in range(i)])
    if len(lst)>=a:
        break
    else:
        continue

print(lst[a-1])

