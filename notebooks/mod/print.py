import sys
read = sys.stdin.readline

i2c = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"
# N = int(read())
N = 1
string = '10 26 12'

sol = []

def c2i(s):
    if s<='9': return ord(s)-ord('0')
    else: return ord(s)-ord("A")+10

def calculate(b,s,d):
	b = int(b)
	answer = []
	for i in range(0, len(s)):
		for j in range(0, len(d)):
			mult = c2i(s[i]) * c2i(d[j])
			answer[i+j] += mult % b
			answer[i+j+1] += mult / b
			if answer[i+j] > b:
				answer[i+j] = answer[i+j] - b
				answer[i+j+1] += 1
	print('answer ', answer)


for i in range(N):
	print('i: ', i)
	# b, s, d = read().split()
	b, s, d = string.split()
	print('b s d', b, s, d)
	calculate(b, s, d)

for i in sol:
	print('sol:', i)