data ColorPrimario = Rojo | Verde | Azul
mezclar :: String -> String -> String
mezclar = \x -> \y -> x ++ y
data ColorSecundario = mezclar ColorPrimario ColorPrimario