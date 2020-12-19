

a = input()


temp = [a[0]]
ans = a[0]
for i in a:
    if i in temp:
        ans += i
    else:
        temp.append(i)
        ans += i



# sample test case
# aassddddff
