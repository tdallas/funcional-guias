-- power4 x = let sqr y = y * yin sqr (sqr x)
power2 = \x -> x*x
powerFour = \x -> power2 (power2 x)
