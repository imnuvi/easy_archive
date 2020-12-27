# print all possible product combinations of the two given lists, in the literal tuple representation, "(val1, val2)"

from itertools import product

a = list(map(int,input().split()));
b = list(map(int,input().split()));

def tupler(x):
    return "(" + str(x[0]) + ", " + str(x[1]) + ")"

print(" ".join(list(map(tupler,list(product(a,b))))))


# sample test case
"""
1 2
3 4
"""
