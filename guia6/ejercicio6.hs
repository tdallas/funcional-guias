data MyList a = Vacia | Cons a (MyList a)

listaVacia = Vacia
listaConDosElementos = Cons 1 (Cons 3 (Vacia))

lengthMyList Vacia = 0
lengthMyList (Cons a x) =  1 + lengthMyList x

headMyList :: Num a => MyList a -> a
headMyList Vacia = 0
headMyList (Cons a x) = a

squaresMyList :: Num a => MyList a -> MyList a
squaresMyList Vacia = Vacia
squaresMyList (Cons a x) = Cons (a*a) (squaresMyList x)

sumElemsMyList :: Num a => MyList a -> a
sumElemsMyList Vacia = 0
sumElemsMyList (Cons a x) = a + sumElemsMyList x

sumElemsMyList' :: Num a => [a] -> a
sumElemsMyList' x = foldr (+) 0 x