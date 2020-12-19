import re

a = input()


temp = [a[0]]
ans = a[0]
curans = a[0]

longe = ""
for i in range(1,len(a)):
    if a[i] in temp:
        if (a[i] == ans[-1]):
            curans += a[i]
        else:
            curans = a[i]
        ans += a[i]
    elif(len(temp) < 2):
        temp.append(a[i])
        curans = a[i]
        ans += a[i]
    else:
        ans = curans
        curans = a[i]
        temp.pop(0)
        temp.append(a[i])
    if (len(ans) >= longe):
        longe = ans

    # print(ans)
    # print(curans)
    # print(temp)
print(longe)




# sample test case
# aassddddff
