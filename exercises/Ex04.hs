minList :: (Ord a) => [a] -> a
minList [] = error "empty list"
minList [x] = x
minList (x : xs)
    | x < minTail = x
    | otherwise = minTail
    where minTail = minList xs

minList' :: (Ord a) => [a] -> a
minList' [] = error "empty list"
minList' [x] = x
minList' (x : xs) = min x (minList' xs)

maxList :: (Ord a) => [a] -> a
maxList [] = error "empty list"
maxList [x] = x
maxList (x : xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maxList xs

maxList' :: (Ord a) => [a] -> a
maxList' [] = error "empty list"
maxList' [x] = x
maxList' (x : xs) = max x (maxList' xs)