# given a number n find the count of all binary sequences of length 2n such that the sum of first n bits is the same as sum of last n bits

n = int(input())

def fact(a):
    if a == 0:
        return 1
    else:
        return a*fact(a-1)

ans = 0
for i in range(0,n+1):
    cnt = fact(n)
    divx = fact(i)
    divy = fact(n-i)
    print(cnt,divx,divy)
    ans += (cnt/(divx*divy))**2

print(ans)
