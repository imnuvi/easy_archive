import re

a = input()


temp = [a[0]]
ans = a[0]
curans = a[0]
for i in range(1,len(a)):
    if a[i] in temp:
        ans += a[i]
    elif(len(temp) < 2):
        temp.append(a[i])
        ans += a[i]
    else:
        ans = curans
        temp.pop(0)
        temp.append(a[i])
    if (a[i] == ans[-1]):
        curans += a[i]
    else:
        curans = a[i]
    print(curans)




# sample test case
# aassddddff
