# given a string convert all lower case to upper case and upper case to lower case

def swap_case(s):
    news = ""
    for i in s:
        if i.islower():
            news += upper(i)
        elif i.isupper():
            news += lower(i)
        else:
            news += i
    return news

if __name__ == "__main__":
    s = input()
    result = swap_case(s)
    print(s)




# sample test case
"""
HackerRank.com presents "Pythonist 2".
"""

# output: hACKERrANK.COM PRESENTS "pYTHONIST 2".
