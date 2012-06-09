# Write a prototype for a two-dimensional list. 
# The dim(x, y) method should allocate a list of y lists that are x elements long. 

Matrix := Object clone do (
	init := method(
		self list := list()
	)
	set := method(x, y, value, self list at(x) atPut(y, value))
	get := method(x, y, list at(x) at(y))
)

Object dim := method(x, y,
	matrix := Matrix clone
	for (i, 1, x, l := list(); l setSize(y)
		matrix list push(l))
	matrix
)

matrix := dim(2,2)
matrix println

# set(x, y, value) should set a value, and get(x, y) should return that value.

matrix set(1, 1, 123)
matrix println
matrix get(1, 1) println