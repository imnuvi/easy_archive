hg = []
for i in range(6):
    hg.append(list(map(int, input().split())))

def hourglasssum(a):
    sum = []
    for i in range(4):
        for j in range(4):
            firstrow = a[i][j] + a[i][j+1] + a[i][j+2]
            secondrow = a[i+1][j+1]
            thirdrow = a[i+2][j] + a[i+2][j+1] + a[i+2][j+2]
            x = firstrow + secondrow + thirdrow
            sum.append(x)
    return max(sum)

print(hourglasssum(hg))
