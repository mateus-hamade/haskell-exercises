-- Implemente a função removeAll que, a partir de um inteiro x e uma
-- lista de inteiros xs, remove todas as ocorrências de x da lista xs.

removeAll :: Eq a => a -> [a] -> [a]
removeAll a xs = [x | x <- xs, x /= a]