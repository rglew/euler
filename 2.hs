module Main where

main = do

-- we have an extra "1" at the start of our sequence...
  print (sum [x | x <- takeWhile (< 4000001) fibs, even x] - 1) 


fibs = 1:1:zipWith (+) fibs (tail fibs)
