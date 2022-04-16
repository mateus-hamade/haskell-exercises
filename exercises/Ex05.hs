andList :: [Bool] -> [Bool]
andList []  = True
andList [x] = x
andList (x : xs) = x && andList xs

orList :: [Bool] -> Bool
orList []  = True 
orList [x] = x
orList (x : xs) = x || orList xs