#3: iff given nummber is divisible by 3 print fizz, if its divisible by 5 print buzz. if its divisible by both print fizz buzz

for i in range (0,100):
    if (i%3 == 0 and i%5 == 0):
        print("fizzbuzz")
        continue
    elif(i%3 == 0):
        print("fizz")
        i+=1
    elif(i%5 == 0):
        print("buzz")
        i+=1
    else:
        print("",i)
        i+=1
