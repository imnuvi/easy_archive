# create fibonacci series using generators


def fib(limit):
    a, b = 0, 1

    while a < limit:
        yield a
        a, b = b, a + b


for i in fib(50):
    print(i)
