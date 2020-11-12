# given a number find a number which when multiplied with digits gives the input number

ans = 1
val = 1
flag = True
a = int(input())

def multip_dig(x):
    res = 1
    val = str(x)
    for i in val:
        res *= int(i)
    return res

while (flag == True):
    if multip_dig(val) == a:
        ans = val
        flag = False
        break
    else:
        val += 1

print(val)
