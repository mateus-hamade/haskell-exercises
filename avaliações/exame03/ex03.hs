-- 3. Considere a função length, que calcula o número de elementos de uma lista.
-- length :: [a] -> Int
-- length [] = 0                            (6)
-- length (_: xs) = 1 + length xs           (7)

-- Adicionalmente, considere as definições de not e composição.
-- not :: Bool -> Bool
-- not True = False                         (8)
-- not False = True                         (9)

-- (◦) :: (b -> c) -> (a -> b) -> a -> c
-- (g ◦ f ) x = g (f x )                    (10)

-- 3. Prove que para toda lista xs e predicado p,
-- length xs = length (filter p xs) + length (filter (not ◦ p) xs).