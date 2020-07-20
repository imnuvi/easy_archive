# 5 : given a list of elements count the occourances of each elements
#As I was a noob when I attempted this problem the solution is expected to be naive and utterly useless

a = int(input())
stuff = []
for i in range(0,a):
    stuff.append(input())

lol = stuff

vals = []
for i in range(0,len(stuff)):
    vals.append(1)
    for j in range(0,len(stuff)):
        if (stuff[i] == stuff[j]) and (i!=j):
            lol[j] = 0
            vals[i] = vals[i]+1
        else:
            continue


for i in range(0,len(lol)):
    if lol[i] == 0:
        vals[i] = 0
        continue
    else:
        continue

vals = [x for x in vals if x!=0]
print(len(vals))
for i in range(0,len(vals)):
    vals[i] = str(vals[i])
print(" ".join(vals))
