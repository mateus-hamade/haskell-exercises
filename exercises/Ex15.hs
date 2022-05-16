-- Implemente uma instância de Eq para o tipo Vec3.

data Vec = Vec Int Int Int deriving (Eq)

equalVec :: Vec -> Vec ->Bool
equalVec x y
    | x == y = True
    | otherwise = False