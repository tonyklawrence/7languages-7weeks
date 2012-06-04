# Execute the code in a slot given its name.
day1 := Object clone
day1 slot := method("Run this code" println)

day1 getSlot("slot") call