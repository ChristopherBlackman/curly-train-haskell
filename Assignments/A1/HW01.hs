{-# OPTIONS_GHC -Wall #-}
module HW01 where

-- Exercise 1 -----------------------------------------

-- Get the last digit from a number
lastDigit :: Integer -> Integer
lastDigit n = n `mod` 10

-- Drop the last digit from a number
dropLastDigit :: Integer -> Integer
dropLastDigit n = ((n - (lastDigit n)) `div` 10)

-- Exercise 2 -----------------------------------------

toRevDigits :: Integer -> [Integer]
toRevDigits n
  | n <= 0 = []
  | otherwise = (lastDigit n):(toRevDigits (dropLastDigit n))

-- Exercise 3 -----------------------------------------

-- Double every second number in a list starting on the left.
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther [] = []
doubleEveryOther (x:[]) = [(2*x)]
doubleEveryOther (x:(y:z)) = (x):(2*y):(doubleEveryOther z)

-- Exercise 4 -----------------------------------------

-- Calculate the sum of all the digits in every Integer.
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits (x:y)
  | x < 10 = x + (sumDigits y) 
  | otherwise = sumDigits (toRevDigits x)

-- Exercise 5 -----------------------------------------

-- Validate a credit card number using the above functions.
luhn :: Integer -> Bool
luhn n
  | n >= 0 = ((sumDigits (doubleEveryOther (toRevDigits n))) `mod` 10 ) == 0
  | otherwise = False

-- Exercise 6 -----------------------------------------

-- Towers of Hanoi for three pegs
type Peg = String
type Move = (Peg, Peg)
--move n-1 from a to b
hanoi :: Integer -> Peg -> Peg -> Peg -> [Move]
hanoi 0 _ _ _ = []
hanoi n a b c = (hanoi (n-1 ) a b c) ++ [(a,c)] ++ (hanoi (n-1) b c a)

