def SumOfLeaders(arr, n):
    curmax = max(arr)
    curmin = min(arr)
    ans = 0
    for i in range(len(arr)):
        if arr[i] == curmax:
            ans += arr[i]
            arr[i] = curmin
            curmax = max(arr)
        else:
            arr[i] = curmin
            curmax = max(arr)

        print(arr)
    return(ans)

# print(SumOfLeaders([33,7,21,14],7))
