lengthM [] = 0
lengthM (x:xs) = 1 + lengthM xs

esPalabraConH [] = 0
esPalabraConH (x:xs) = if x == 'h' || x == 'H' then 1 else 0

hs x = foldr (+) 0 (map esPalabraConH x)

avg = \x -> \n -> div x n
avgLength x = avg (foldr (+) 0 (map length x)) (length x)

filterM p [] = []
filterM p (x:xs) = if p x then x ++ (map (\x -> x) xs) 