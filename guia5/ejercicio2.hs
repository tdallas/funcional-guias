sumL [] = 0
sumL (x:xs) = x + sumL(xs)

anyL [] = False
anyL (x:xs) = x || anyL (xs)

allL [] = True
allL (x:xs) = x && allL xs

-- remainders,dada una lista de n ́umeros, devuelve los restos de su division por un ńumero.
remainders :: [Integer] -> Integer -> [Integer] 
remainders [] = \n -> []
remainders (x:xs) = \n -> (x `mod` n:remainders (xs) n)

-- squares,dada una lista de n ́umeros, devuelve la lista de sus cuadrados.
squares [] = []
squares (x:xs) = (x*x:squares xs)

-- lengths,dada una lista de listas, devuelve la lista de sus longitudes.
lengthM [] = 0
lengthM (x:xs) = 1 + lengthM xs
lengths [[]] = [0]
lengths (x:xs) = (lengthM x: lengths xs)
 
-- order,dada una lista de pares ordenados de n ́umeros, 
-- devuelve la lista de aquellos cuya primer componente es menor que el triple de la segunda
order [] = []
order ((x,y):xs) = if x < 3*y then ((x,y): order xs) else order xs

pairs [] = []
pairs (x:xs) = if x `mod` 2 == 0 then (x: pairs xs) else pairs xs

-- nota: aparentemente una lista de chars = un string, osea "ab" = ['a','b']
chars [] = []
chars (x:xs) = if ((fromEnum x) <= 90 && (fromEnum x) >= 65) || ((fromEnum x) <= 122 && (fromEnum x) >= 97)
    then (x: chars xs) else chars xs

-- La induccion estructural SIEMPRE termina porque siempre llamamos
--  la funcion devuelta en estructuras inductivas mas chicas que la original