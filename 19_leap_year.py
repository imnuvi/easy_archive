# given a year print weather it is a leap year or not


year = int(input())
def leap(year):
    # return True if not(year % 400) else (False if not(year % 100) else True if not(year % 4) else False)
    return bool(not(year%400) or (not(year%4) and (year%100)))


print("Yes" if leap(year) else "Nah")
