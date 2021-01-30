import re

a = raw_input()
ans = re.findall("[@#*!]",a)
print(len(ans))
