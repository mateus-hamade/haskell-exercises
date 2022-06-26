-- count :: (a -> Bool) -> [a] -> Int

-- que conta o número de elementos em uma lista de valores que satisfazem uma
-- condição fornecida como primeiro argumento. Sua função deve atender os
-- seguintes casos de teste:

-- count (> 0) [0, 1, 2] == 2
-- count (> 0) [-1, -2] == 0
-- count (> 0) [] == 0

count :: (a -> Bool) -> [a] -> Int
count _ [] = 0 
count f xs = length [a | a <- xs, f a]