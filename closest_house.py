# given x,y co ordinates of houses in a two d plane find the nearest house until that input

a, b = list(map(int,input().split()))
lst = []
for i in range(a):
    x = list(map(int,input().split()))
    if (x[0] == 1):
        lst.append((x[1]**2)+(x[2]**2))
    else:
        print(lst[b-1])
