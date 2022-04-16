indexOf :: Int -> [Int] -> Int
indexOf n xs = index n xs 0
    where
        index _ [] _    = -1
        index n (x:xs) acc  
            | n == x    = acc
            | otherwise = index n xs (acc + 1)
