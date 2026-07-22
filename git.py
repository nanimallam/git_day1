def welcome():
    print("welcome to git")
def prime(n):
    factors = 0

    for i in range(1, n + 1):
        if n % i == 0:
            factors += 1

    if factors == 2:
        return True
    else:
        return False


num = int(input())

if prime(num):
    print("Prime")
else:
    print("Not Prime")

