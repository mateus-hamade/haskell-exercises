-- Implemente a função indexOf que, a partir de um inteiro x e uma lista
-- de inteiros xs, retorna a posição de x na lista xs. Caso x não pertença
-- a lista, o valor -1 deve ser retornado.

indexOf :: Int -> [Int] -> Int
indexOf n xs = index n xs 0
    where
        index _ [] _    = -1
        index n (x:xs) acc  
            | n == x    = acc
            | otherwise = index n xs (acc + 1)
