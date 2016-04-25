module Fac(factorial) where
import System.Environment
factorial :: Integer -> Integer
factorial n
 | n < 0     = 0
 | n == 0    = 0
 | n == 1    = 1
 | otherwise = factorialRec 0 1 (n-1)

factorialRec :: Integer -> Integer -> Integer -> Integer
factorialRec a b c
 | c <= 0 = b
 | otherwise = factorialRec b (a+b) (c-1)
