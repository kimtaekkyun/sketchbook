def similar(a, b):
    for letter in a:
        if a.count(letter) == b.count(letter):
            continue
        else:
            return False
    return True
def getComb(n, r):
    return len(list(combinations(n, r)))
def foundMatch(str):
def findSimilar(group):
    for y in group:
        # TODO: O(n^2) needs to be solved
        matchMap = []
        for i in range(len(y) - 1):
            if foundMatch(matchMap, y[i]):
                continue
            for j in range(i + 1, len(y)):
                if foundMatch(matchMap, y[j]):
                    continue
                if similar(y[i], y[j]):
                    cnt += 1
    return 
    
def solve(n, k, a):
    group = []
    for i in range(k + 1):
        new = []
        group.append(new)
    # group by the number of Caps
    for str in a:
        numCaps = sum(1 for c in str if c.isupper())
        group[numCaps].append(str.upper())
    
    return findSimilar(group)

import sys
from itertools import combinations
t = int(sys.stdin.readline())
for _ in range(t):
    n, k = map(int, sys.stdin.readline().split())
    a = sys.stdin.readline().split()
    # Insert code here
    ret = solve(n, k, a)
    print(ret)
    # End of insertion
