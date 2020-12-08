a,b = list(map(int,input().split()))

sum = 0
while(a<b):
    a *= 3
    b *= 2
    sum += 1

print(sum)
