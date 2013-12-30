module Main where

main = do

   print  (maximum [x | x <- [1..(floor $ sqrt 600851475143)], (600851475143 `mod` x == 0) && isPrime x])

isPrime :: Integer->Bool
isPrime x = null [y | y <- [2..floor (sqrt (fromIntegral x))], x `mod` y == 0]
