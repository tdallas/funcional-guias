-- f x = let (y,z) = (x,x) in y 
-- f x = x 
greaterThan (x,y) = if x > y then True else False
greaterThanF (x,y) = x > y
f (x,y) = let z = x + y in g (z,y) where g (a,b) = a - b
ff (x,y) = x + y - y