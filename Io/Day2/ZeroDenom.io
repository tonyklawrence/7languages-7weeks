# How would you change / to return 0 if the denominator is zero?

(1 / 1) println
(1 / 2) println
(1 / 0) println

Number by := Number getSlot("/")
Number / := method(denom, if (denom == 0, 0, by(denom)))

(1 / 1) println
(1 / 2) println
(1 / 0) println