#given initial number of rats, find the difference between populations in white and black rats after a particular number of years
#white rats give birth to two rats in first year, gives birth to three rats in the second year and then dies
#black rats give birth to three rats in the first year, then dies in the second year



years ,rats = list(map(int,input().split()))

white = black = rats

def black(years,rats):
    for i in range(years):
        rats = rats*3
    return rats

def white(years,rats):
    for i in range(years):
        
