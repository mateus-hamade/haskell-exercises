-- A função all determina se todos os elementos de uma lista satisfazem um predicado. Seu tipo é:

-- all :: (a -> Bool) -> [a] -> Bool

-- Implemente a função all: 
-- 1) usando recursão 

all' :: (a -> Bool) -> [a] -> Bool
all' _ [] = True
all' f (x : xs) = f x && all' f xs

-- 2) usando foldr.
