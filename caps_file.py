#  python program to find the number of capital letters ina agiven file.


with open("large.txt", "r") as f:
    count = 0
    text = f.read()
    for i in text:
        if i.isupper():
            count += 1

print(count)
