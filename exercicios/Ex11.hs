-- Implemente a função capitalize que converte todas as letras minúsculas em uma string para maiúsculas. 
-- Utilize a função toUpper da biblioteca Data.Char

import Data.Char

capitalize :: String -> String
capitalize [] = []
capitalize xs =  map toUpper xs