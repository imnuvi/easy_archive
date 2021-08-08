import math


def cent(a,b):
    x1 = a[0]
    x2 = b[0]
    y1 = a[1]
    y2 = b[1]
    if x1==x2 and y1==y2:
        return False
    maxx = max(x1,x2)
    minx = min(x1,x2)
    maxy = max(y1,y2)
    miny = min(y1,y2)

    centerx = minx + (maxx - minx)/2
    centery = miny + (maxy - miny)/2
    return (centerx, centery)


def calc_center(lst):
    newl = []
    for p in range(len(lst)):
        for q in range(p,len(lst)):
            i = lst[p]
            j = lst[q]
            val = cent(i,j)
            if val == False:
                continue
            if val in newl:
                return val
            else:
                newl.append(val)
    return False

def calc_dist(a,b):
    x1 = a[0]
    x2 = b[0]
    y1 = a[1]
    y2 = b[1]
    len = math.sqrt(((x1-x2)**2) + ((y1-y2)**2))
    return len


def calc_lies(lst, center):
    ans_l = [calc_dist(pnt, center) for pnt in lst]
    if len(set(ans_l)) == 1:
        return True
    else:
        return False


def main():
    a = (8,20)
    b = (39,2)
    c = (47,16)
    d = (16,34)
    lst = [a,b,c,d]
    center = calc_center(lst)
    if center == False:
        print('not a square')
    else:
        if calc_lies(lst, center):
            print('square')
        else:
            print('not a square')




main()
