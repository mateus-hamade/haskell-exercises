-- Implemente a função withoutPrimes que remove 
-- todos os valores primos de uma lista de inteiros fornecida como argumento

withoutPrimes :: [Int] -> [Int]
withoutPrimes = filter (not . isPrime) 
    where
        isPrime n = twoFactors (factors n)
        twoFactors (_ : _ : []) = True
        twoFactors _            = False
        factors n = [x | x <- [1..n], n `mod` x == 0]