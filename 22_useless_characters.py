import re

a = input()
ans = re.findall("[@#*!]",a)
print(len(ans))


cnt = 0
for i in a:
    if i.isalnum():
        continue
    else:
        cnt+=1

print(cnt)
