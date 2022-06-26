-- Implemente uma instância de Eq para o tipo Person que considere
-- duas pessoas iguais se essas possuírem o mesmo nome.

data Person = Person {
    name :: String,
    age  :: Int
} deriving (Eq, Show)

samePeople :: Person -> Person -> Bool
samePeople a b 
    | name a == name b = True
    | otherwise        = False