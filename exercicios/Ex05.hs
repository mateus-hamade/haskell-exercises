-- Implemente a função andList que produz a conjunção de uma lista de
-- booleanos fornecida como entrada.

andList :: [Bool] -> [Bool]
andList []  = True
andList [x] = x
andList (x : xs) = x && andList xs

-- Implemente a função orList que produz a disjunção de uma lista de
-- booleanos fornecida como entrada.

orList :: [Bool] -> Bool
orList []  = True 
orList [x] = x
orList (x : xs) = x || orList xs