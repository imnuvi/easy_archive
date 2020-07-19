# 1: program must accept multiple email addresses of students
#the output should be the order of email addresses in order of popularity(print most used domain names first)
#if two or more domains have same priority place them in ascending order of name


a = int(input())
dic = {}

for i in range(a):
	x = list(input().split("@"))[1]
	if x in dic.keys():
		dic[x] += 1
	else:
		dic[x] = 1
finl = []
print(dic)
newl = list(dic.values())
newl.sort()
newl.reverse()
newl = dict.fromkeys(newl)
for j in newl:
	vf = [k for k,v in dic.items() if v==j]
	vf.sort()
	finl.append(vf)
print(finl)

#sample test case
"""asdfa@gmail.com
asdfasdf@gmail.com
aasss@live.com
adffdff@gmail.com
ads@zzzz.com
adfsa@zzz.com
asdlfas@live.com
gfhgfhgf@zzz.com
ads@aaa.com
adfadsf@aaa.com"""