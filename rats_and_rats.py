#given initial number of rats, find the difference between populations in white and black rats after a particular number of years
#white rats give birth to two rats in first year, gives birth to three rats in the second year and then dies
#black rats give birth to three rats in the first year, then dies in the second year



years ,rats = list(map(int,input().split()))

# white = black = rats

def black(years,rats):
    prev = 0
    current = rats
    for i in range(years+1):
        current = (current*3)
    return current

def white(years,rats):
    prev = 0
    two_prev = 0
    three_prev = 0
    current = rats
    for i in range(years-1):
        current = (current*2) + (prev * 3) + (two_prev) - (three_prev)
        three_prev = two_prev
        two_prev = prev
        prev = current
    return current

print(black(years,rats))
# print(abs(white(years,rats)-black(years,rats)))
