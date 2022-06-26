-- Implemente uma instância de Show para Person de forma que
-- o resultado da conversão para string de um valor de tipo Person exiba apenas o campo name deste registro.

instance Show Person where
    show (Person a _) = show a

data Person = Person{
    name :: String,
    age  :: Int
}

showPerson :: Person -> Person -> Person
showPerson x y
    | age x > age y = x
    | otherwise = y