# given a string print the string elements from the given kth elements
# eg: 12345 3  ->  34512

a,b = input().split()
b = int(b) - 1

print(a[b:] + a[:b])
