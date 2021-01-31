
a = int(input())
b = list(map(int,input().split()))
c = list(map(int,input().split()))


subs = b[c[0]:c[1]+1]
subs.reverse()
ans = b[:c[0]] + subs + b[c[1]+1:]

print(ans)
