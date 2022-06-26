-- Implemente a função quicksort que, a partir de uma lista [a], ordena todos os elementos da lista.

quicksort :: (Ord a) => [a] -> [a]  
quicksort [] = []  
quicksort (pivot : xs) = smallerSorted ++ [pivot] ++ biggerSorted 
    where
        smallerSorted = quicksort [a | a <- xs, a <= pivot]  
        biggerSorted = quicksort [a | a <- xs, a > pivot] 