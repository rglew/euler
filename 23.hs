module Main where


import Data.List
import Data.Array

d n = product [(p * product g - 1) `div` (p - 1) |
                 g <- group $ primeFactors n, let p = head g
              ] - n
primeFactors = pf primes
  where
    pf ps@(p:ps') n
     | p * p > n = [n]
     | r == 0    = p : pf ps q
     | otherwise = pf ps' n
     where (q, r) = n `divMod` p
primes = 2 : filter (null . tail . primeFactors) [3,5..]
