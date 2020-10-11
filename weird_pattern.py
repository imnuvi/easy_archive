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
for i in range(1,a+1):
    flag="inc" if ((i-1)%(b*2) < b) else "dec"
    print("*"*((i-1)%(b*2))  , i) if flag=="inc" else print("*"*((i-1)%(b*2) -i-1),i)
