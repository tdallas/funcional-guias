-- Utilizando el TAD de las pilas definir una función que verifique si 
-- una cadena decaracteres cumple la condición de balanceo de paréntesis.

-- s: string, chC: charClose, chO: charClose, c: close, o: open
isBalanced [] c o = c == o
isBalanced s chC chO c o = if (topS s) == chO then isBalanced (popS s) chC chO c (open+1) 
                        else if (topS s) == chC then isBalanced (popS s) chC chO (c+1) o
                        else isBalanced (popS s) chC chO c o

-- se podria optimizar sabiendo el size del stack, si estoy a la mitad del stack y dif entre c y o > sizeStack/2 
-- no esta balanceado ni cerca