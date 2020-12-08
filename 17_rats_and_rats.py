#given initial number of rats, find the difference between populations in white and black rats after a particular number of years
#white rats give birth to two rats in first year, gives birth to three rats in the second year and then dies
#black rats give birth to three rats in the first year, then dies in the second year



years ,rats = list(map(int,input().split()))

# white = black = rats

def black(years,rats):
    return int(rats*(3**(years-1)) + rats*(3**(years)))

def white(years,rats):
    x ,y ,z = 7, 2, 1
    if (years == 0):
        return rats*1
    elif (years == 1):
        return rats*2 + rats*1
    else:
        for i in range(years-2):
            x,y,z = (x*2)+(y*3),x,y
        return (x+y+z)*rats


# print(white(years,rats))
print(abs(white(years,rats)-black(years,rats)))
