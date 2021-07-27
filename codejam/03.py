def check_sync(s):
    first = s[0]
    for val in s:
        if first != val:
            return False
    return True

def update_time(n, s, d):
    lst = []
    for i in range(n):
        new_time = s[i] + d[i]
        lst.append(new_time % 86400)

    return lst

def time_to_sec(t):
    lst = []
    for i in range(len(t)):
        h, m, s = map(int, t[i].split(':'))
        hms = h * 3600 + m * 60 + s

        lst.append(hms)
    return lst

def f(n, t, d):
    s = []
    s = time_to_sec(t)

    one_day_sec = 86400
    cnt = 0
    for i in range(one_day_sec):
        s = update_time(n, s, d)
        cnt += check_sync(s)
    
    return cnt

import sys

tc = int(sys.stdin.readline())

for _ in range(tc):
    n = int(sys.stdin.readline())
    t = sys.stdin.readline().split();
    d = list(map(int,sys.stdin.readline().split()))

    # Insert code here
    print(f(n, t, d))

    # End of insertion
