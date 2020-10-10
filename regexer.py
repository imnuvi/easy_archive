import re
str = "000.5"
str2 = "2.5"


# def check(str):
#     x = re.sub("i", "k", str)
#     return x

print(re.findall("[000-255][.][000-255]", str))
