-- first :: (a,b) -> a
first (x,y) = x

-- second :: (a,b) -> b
second (x,y) = y

-- constV :: a -> b -> a
constV x y = x
-- constV = \x -> \y -> x

-- compose :: (b -> c) -> (a -> b) -> a -> c
compose f g = \x -> f (g x)

-- apply :: (a -> b) -> a -> b
apply f x = f x 

-- pairFunc :: (a->b) -> (c->d) -> 
pairFunc (f1,f2) x y = (f1 (f2 x), f2 (f1 y))
