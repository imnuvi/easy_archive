#4 : given a number print all numbers from zero to the given number without space without string methods
#same as the previous quetsion but in a  more naive wway and truly stringless


n = int(input())
def tens(n,a):
    for i in range(1,n+1):
        a = a*(10)+i
    return a

def hund(n,a):
    for i in range(10,n+1):
        a = a*(100)+i
    return a
def thou(n,a):
    for i in range(100,n+1):
        a = a*(1000)+i
    return a

if n<10:
    b = tens(n,0)
elif n>=10 and n<100:
    a = tens(9,0)
    b = hund(n,a)
elif n>99:
    a = tens(9,0)
    c = hund(99,a)
    b = thou(n,c)

print (b)
