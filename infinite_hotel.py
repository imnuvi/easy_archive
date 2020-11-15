# view problem  here
# https://www.hackerrank.com/challenges/py-the-captains-room/problem


import itertools 

a = int(input())
b = list(map(int,input().split()))

b.sort()

for val,cnt in itertools.groupby(b):
	if len(list(cnt)) == a:
		continue
	else:
		print(val)
		break

# print(a,a)
# print(b)