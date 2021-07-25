from itertools import combinations

def get_combination(n):
    return n * (n - 1) / 2

def get_key(val):
    num_caps = sum(1 for c in val if c.isupper())
    lower_sorted = "".join(sorted(val.lower()))
    return f'{num_caps}{lower_sorted}'
    
def f(a):
    map = {}
    for val in a:
        key = get_key(val)
        if key in map:
            map[key] += 1
        else:
            map[key] = 1
    
    num_similar = 0
    for cnt in map.values():
        num_similar += get_combination(cnt)
    
    return int(num_similar)

import sys

t = int(sys.stdin.readline())

for _ in range(t):
    n, k = map(int, sys.stdin.readline().split())
    a = sys.stdin.readline().split()

    # Insert code here
    print(f(a))

    # End of insertion
