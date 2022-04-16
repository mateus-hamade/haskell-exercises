-- divide :: Int -> [a] -> ([a], [a])

-- que a partir de um inteiro n e uma lista xs produz um par de listas em que
-- o primeiro componente possui os n primeiros elementos de xs e o segundo
-- componente o restante da lista. Sua função deve atender os seguintes casos de teste:

-- divide 0 [1,2,3] == ([], [1,2,3])
-- divide 5 [1,2,3] == ([1,2,3], [])
-- divide 2 [1,2,3] == ([1,2], [3])

divide :: Int -> [a] -> ([a], [a])
divide _ [] = ([], []) 
divide 0 xs = ([], xs)
divide n xs = (take n xs, drop n xs)