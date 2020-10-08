#helper function
def max_tweeter():
    #initializing dictionary (keys:names, values:count)
    my_dictionary = {}

    #fill dictionary
    for i in range(int(input())):
        x = input().split(" tweet_id")
        #if name is multi word
        v = x[0]
        if v in my_dictionary:
            my_dictionary[v] += 1
        else:
            my_dictionary[v] = 1


    y = sorted(list(my_dictionary.items()), key=lambda x: (-x[1],x[0]))


    print(y[0][0],y[0][1])

#main function
n = int(input())

for test_case in range(n):
    max_tweeter()
