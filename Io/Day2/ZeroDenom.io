# How would you change / to return 0 if the denominator is zero?

Number by := Number getSlot("/")
Number / := method(denom, if (denom == 0, 0, by(denom)))

(10 / 10) println
(10 / 20) println
(10 /  0) println