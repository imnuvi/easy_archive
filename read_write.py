p1 = int(input())
lp1 = int(input())
p2 = int(input())
lp2 = int(input())

tl1 = p1*lp1
tl2 = p2*lp2

rs = int(input())
ws = int(input())

t = int(input())

if rs*t > tl1:
    print("write")
    readtime = tl1/rs
    remt = t-s
    print((remt*ws)//lp2)
    print((remt*ws)%lp2)
else:
    print("read")
    print((t*rs)//lp1)
    print((t*rs)%lp1)
