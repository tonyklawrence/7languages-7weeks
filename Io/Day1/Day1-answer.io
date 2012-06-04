# Evaluate 1 + 1 and then 1 + "one". 
# Is Io strongly typed or weakly typed? Support your answer with code.
(1 + 1) println
# 1 + "one"
// It's strongly typed
// Exception: argument 0 to method '+' must be a Number, not a 'Sequence'

# Is 0 true or false? 
(0 and true) println
# What about the empty string? 
("" and true) println
# Is nil true or false? Support your answer with code.
(nil and true) println

# How can you tell what slots a prototype supports?
Lobby slotNames println

# What is the difference between = (equals), := (colon equals), and ::= (colon colon equals)? 
# When would you use each one?
assignment := Object clone

":= assigns to a slot, creating if required" println
assignment slot := "new slot created" println
assignment slot := "existing slot changed" println
"= assigns to an existing slot" println
assignment slot = "existing slot changed again" println
"::= assigns to a slot, also creates a set method"
assignment slotNames println
assignment slot ::= "now has setter" println
assignment slotNames println