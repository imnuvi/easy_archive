# Condition 1: All the integers in the list are positive.
# Condition 2: 5 is a palindromic integer.


def palindrome(lst):
    anl = []
    for i in lst:
        x = str(i)
        if x == x[::-1]:
            anl.append(True)
        else:
            anl.append(False)
    return anl



if all(a) > 0:
    if any(palindrome(a)):
        print("True")
    else:
        print("False")
else:
    print("False")
