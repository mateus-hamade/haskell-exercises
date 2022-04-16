-- Defina a função existsPositive que retorna verdadeiro se a lista de
-- números inteiros fornecida como argumento possui pelo menos um elemento maior que 0.

existsPositive :: [Int] -> Bool
existsPositive [] = False
existsPositive (x:xs)
    | x > 0 = True
    | otherwise = existsPositive xs
