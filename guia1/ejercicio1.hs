seven = \x -> 7
sign = \x -> if x > 0 then 1 else if x == 0 then 0 else -1
absoluteS = \x -> (sign x) * x
absolute = \x -> abs x
dividesTo = \x -> \y -> if y `mod` x == 0 then "el primero divide al segundo" else "el primero no divide al segundo"
swap (x,y) = (y,x)