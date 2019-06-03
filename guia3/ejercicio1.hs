myOr :: Bool -> Bool -> Bool
myOr = \x -> \y -> x || y

-- a -> b -> a
constNum = \x -> \y -> x