"""
The circular Winner Problem is the classic Josephus problem.
The general solution of is :

f(n, k) = ( ( f(n-1, k) + k-1 ) % n ) + 1

Therefore we could also use this equation to solve
"""

def josCircle(n, k):

    if n == 1:
        return 1; # Stop condition: if only one player, he will win

    return ((josCircle(n-1, k) + k - 1) % n) + 1


test = josCircle(5, 2)
print(test)

