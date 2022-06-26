-- O objetivo dessa avaliação é provar propriedades envolvendo a função filter.
-- filter :: (a -> Bool) -> [a] -> [a]
-- filter [] = []                            (1)
-- filter p (x : xs)
--    | p x = x : filter p xs                (2)
--    | otherwise = filter p xs              (3)

-- Considere a função all, que retorna verdadeiro se todos os elementos da lista de entrada satisfazem um predicado.
-- all :: (a -> Bool) -> [a] -> Bool
-- all [] = True                            (4)
-- all p (x : xs) = p x && all p xs         (5)

-- 2. Prove que para toda lista xs e predicado p, se all p xs ≡ True então filter p xs ≡ xs.