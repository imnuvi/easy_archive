
import itertools 

a = int(input())
b = list(map(int,input().split()))

b.sort()

for val,cnt in itertools.groupby(b):
	print(val,list(cnt))


# print(a,a)
# print(b)