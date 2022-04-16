quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (pivot : xs) = smallerSorted ++ [pivot] ++ biggerSorted 
    where
        smallerSorted = quicksort [a | a <- xs, a <= pivot]  
        biggerSorted = quicksort [a | a <- xs, a > pivot] 