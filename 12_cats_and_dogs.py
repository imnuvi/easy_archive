# given x y and z which are positions of catA catB and mouseC on a timeline print catA if x reaches the mouse y first catB if y reaches mouse at z first and  mouse c if both cats reach it at the same time and fight to death duh.


n = int(input())
for i in range(n):
    x,y,z = list(map(int,input().split()))
    print("Cat A") if (abs(x-z)<abs(y-z)) else (print("Cat B") if (abs(x-z)>abs(y-z)) else print("Mouse C"))
