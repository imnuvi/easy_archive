# given an integer n find the sum of all positive integers until n recursively.

def recu(n):
    if n == 1:
        return 1
    else:
        return n + recu(n-1)

print(recu(int(input())))
