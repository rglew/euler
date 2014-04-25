module TwentyThree where


import Data.List
import Data.Array

data AbStatus = Abundant | Perfect | Deficient deriving (Show)


main = do
       let sumof2abundants = sum2 abundants abundants
       print . sum $ filter (\x -> notElem x sumof2abundants) [16..28123]

abundants = [x|x<-[12..28123],(d x) > x]

sum2 x y = nub $ concat $ [map (+z) [a] | z<-x, a<-y]

classify n

  | d n > n = Abundant
  | d n == n = Perfect
  | d n < n = Deficient 

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
