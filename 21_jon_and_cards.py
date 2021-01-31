# jon has to follow the following steps in order to open his encrypted mail
# 1. delete all vowels
# 2. insert a character "*" before each consonant
# 3. replace all uppercase consonant with lower case

import string

vowe = "aeiouAEIOU"

conso = "".join(["" if (i in vowe) else i for i in string.ascii_lowercase])

a = int(input())
for i in range(a):
    x = input()
    ans = ""
    for i in x:
        if i in vowe:
            ans += ""
        elif i in conso:
            ans += "*" + i
        else:
            ans += "*" + i.lower()
    print(ans)
