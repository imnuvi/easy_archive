#given a list of people and their tweets count the person with max tweets and order equal tweeters based on alphabetical order


#helper function
def max_tweeter():
    #initializing dictionary (keys:names, values:count)
    my_dictionary = {}
    #fill dictionary
    for i in range(int(input())):
        x = input().split(" tweet_id")
        #case where name is multi word
        v = x[0]
        if v in my_dictionary:
            my_dictionary[v] += 1
        else:
            my_dictionary[v] = 1

    #selecting max valued items
    max_count = max(my_dictionary.values())
    max_lst = sorted([" ".join((key,str(value))) for (key,value) in my_dictionary.items() if value==max_count])
    print("\n".join(max_lst))



#main function
n = int(input())

for test_case in range(n):
    max_tweeter()
