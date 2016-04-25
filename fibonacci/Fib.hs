module Fib(fibonacci) where
import System.Environment
fibonacci :: Integer -> Integer
fibonacci n
 | n < 0     = 0
 | n == 0    = 0
 | n == 1    = 1
 | otherwise = fibonacciRec 0 1 (n-1)

fibonacciRec :: Integer -> Integer -> Integer -> Integer
fibonacciRec a b c
 | c <= 0 = b
 | otherwise = fibonacciRec b (a+b) (c-1)
