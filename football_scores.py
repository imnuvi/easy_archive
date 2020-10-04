n = int(input())

print(int(n*((n-1)/2)))
thed = {}

def inter(x,y):
    global thed
    if x in thed.keys():
        thed[x] += y
    else:
        thed[x] = y

for i in range(int(n*((n-1)/2))):
    xval = input().split()
    t1 = xval[0]
    t2 = xval[1]
    s1,s2 = xval[2].split("-")
    if s1==s2:
        inter(t1,1)
        inter(t2,1)
    elif s1>s2:
        inter(t1,3)
    else:
        inter(t2,3)

print(list(thed.keys())[list(thed.values()).index(max(list(thed.values())))],max(list(thed.values())))
