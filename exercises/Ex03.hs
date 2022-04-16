existsPositive :: [Int] -> Bool
existsPositive [] = False
existsPositive (x:xs)
    | x > 0 = True
    | otherwise = existsPositive xs
