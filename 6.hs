-- The sum of the squares of the first ten natural numbers is,
-- 12 + 22 + ... + 102 = 385
-- The square of the sum of the first ten natural numbers is,
-- (1 + 2 + ... + 10)2 = 552 = 3025
-- Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 . 385 = 2640.
-- Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.


--could be more terse but...
--there are also formulas for these you could use
--eg:sumOfSquares =  x(x+1)(2x+1)/6
--   squareOfSum = (x(x+1)/2) ^ 2 
--
--but the below is more readable for non mathematicians...
module Main where

main = do
  print ((squareOfSum 100) - (sumOfSquares 100))

sumOfSquares :: (Enum a, Num a) => a -> a
sumOfSquares n = sum $ fmap (\x -> x ^ 2) [1..n]

squareOfSum :: (Enum a, Num a) => a -> a
squareOfSum x = (^2) $ sum [1..x]
