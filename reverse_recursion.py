n = 22

flag = True
val = 2

while flag:
    #do something
    print(n)
    if n%val != 0 and n!=1:
        flag = False
        print('nope')
    if n == 0:
        print('is a reverse')
        break
    n = n//val
    val += 1
#print('nope')
