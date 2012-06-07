# A Fibonacci sequence starts with two 1s. Each subsequent number is the sum of the two numbers that came before: 
# 1, 1, 2, 3, 5, 8, 13, 21, and so on. 
# Write a program to find the nth Fibonacci number. fib(1) is 1, and fib(4) is 3. 
# As a bonus, solve the problem with recursion and with loops.

fib := method(nth,
	if (nth < 2, nth, fib(nth - 1) + fib(nth - 2))
)

fib(1) println
fib(4) println
fib(8) println