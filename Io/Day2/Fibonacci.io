# A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 
# 1, 1, 2, 3, 5, 8, 13, 21, and so on. 
# Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. 
# As a bonus, solve the problem with recursion and with loops.

fib := method(nth,
	value := 1
	prev := 0
	
	for(i, 1, nth-1, store := value; value = value + prev; prev := store); return value
)

fib(7) println

