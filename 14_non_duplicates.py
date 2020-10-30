# given a string, print the first character that does not repeat in the string

# eg.  asdfasd, here f is the only character that doesnt repeat
# if all characters repeat, print "not applicable"


a = input()

val = 0

for i in a:
    if i.count(a) == 1:
        print(i)
        val = 1
        break
    else:
        continue


if val!=1:
    print("not applicable")
