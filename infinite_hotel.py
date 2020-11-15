
import itertools 

a = int(input())
b = list(map(int,input().split()))

b.sort()

for val,cnt in itertools.groupby(b):
	if len(list(cnt)) == 5:
		continue
	else:
		print(val)
		break

# print(a,a)
# print(b)