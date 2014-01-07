-- The prime factors of 13195 are 5, 7, 13 and 29.
-- What is the largest prime factor of the number 600851475143 ?

module Main where

main = do

   print  (maximum [x | x <- [1..(floor $ sqrt 600851475143)], (600851475143 `mod` x == 0) && isPrime x])

isPrime :: Integer->Bool
isPrime x = null [y | y <- [2..floor (sqrt (fromIntegral x))], x `mod` y == 0]
