-- Defina uma função para calcular a função ou-exclusivo (xor).
        
xor :: Bool -> Bool -> Bool
xor False bool = bool
xor True bool  = not bool