# print this pattern, eg a = 10, n = 4
# 1
# *2
# **3
# ***4
# **5
# *6
# 7
# 8
# *9
# **10


a = int(input())
b = int(input())
flag = "inc"
for i in range(0,a):
    flag="inc" if ((i)%(b*2 - 1) < b) else "dec"
    print("*"*((i)%(b*2 - 1))  , i) if flag=="inc" else print("*"*((b*2-1)-(i%(b*2))-1), i )
