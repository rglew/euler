--   By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
--  What is the 10 001st prime number?

module Main where

main =  print (last $ take 10001 [x | x <- [2..], isPrime x == True]) 


isPrime :: Integer->Bool
isPrime x = null [y | y <- [2..floor (sqrt (fromIntegral x))], x `mod` y == 0]


