# a robot is at position 0. It wants to get to position x. it can move 1,2,3,4,5 steps. find minimum number of steps to reach x.




def robomove(x):
    ans = x//5
    rem = x%5
    if rem == 0:
        return rem
    else:
        return rem + 1
