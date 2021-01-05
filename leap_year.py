# given a year print weather it is a leap year or not


year = int(input())
def leap(year):
    return bool(not(year%400) or (not(year%4) and (year%100)))


print("Yes" if leap(year) else "Nah")
