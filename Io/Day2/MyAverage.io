# Add a slot called myAverage to a list that computes the average of all the numbers in a list. 

List myAverage := method(average)
list(1, 2, 3, 4, 5) myAverage println

# What happens if there are no numbers in a list? 
# list() myAverage println
"Exception: nil does not respond to '/'" println

# (Bonus: Raise an Io exception if any item in the list is not a number.)
List myAverage := method(if (detect(e, e type != "Number"), Exception raise("Found non number in list"), average))
list(1, 2, 3, 4, 5) myAverage println
list(1, 2, 3, "4", 5) myAverage println
