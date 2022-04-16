-- Defina uma função que calcule o n-ésimo termo da sequência de Fibonacci.

fib :: (Integral a) => a -> a
fib 0 = 0
fib 1 = 1
fib x = fib(x - 1) + fib(x - 2)