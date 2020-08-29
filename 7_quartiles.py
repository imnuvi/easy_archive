# get the quartile values for first half, last half and the median of a given data set


a = int(input())
b = list(map(int,input().split()))

b.sort(key=int)

def getmed(b,a):
    if (a)%2 != 0:
        themedian = b[(a//2)]
    else:
        themedian = (b[(a//2)]+b[((a)//2)-1])//2
    return themedian

if (a)%2 == 0:
    x = b[0:a//2]
    y = b[a//2:a]
else:

    x = b[0:a//2]
    y = b[a//2+1:a]

print(getmed(x,len(x)))
print(getmed(b,a))
print(getmed(y,len(y)))
