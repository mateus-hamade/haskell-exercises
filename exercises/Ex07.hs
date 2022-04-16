sumElements :: [a] -> Int
sumElements [] = 0
sumElements (x:xs) = 1 + sumElements xs