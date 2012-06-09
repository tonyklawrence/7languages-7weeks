# Write a prototype for a two-dimensional list. 
# The dim(x, y) method should allocate a list of y lists that are x elements long. 
# set(x, y, value) should set a value, and get(x, y) should return that value.

Matrix := Object clone
Matrix set := method(x, y, value, x)
Matrix get := method(x, y, x)

Object dim := method(x, y, 
	matrix := Matrix clone
	matrix list := list()
	matrix
)

dim(1,2) println
