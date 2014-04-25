{-
Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.

For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.

Evaluate the sum of all the amicable numbers under 10000.
-}

module TwentyOne where

import Data.Tuple

problem twentyone = sum $ map (\x-> snd x) $ filter (\x->an2 x)  [(x,d x)|x<-[2..9999]]

--d :: Int -> Int
d n 
  | (n > 1) && (n < 10000) = sum $ [x | x <- [1..(n-1)], n `rem` x == 0]
  | otherwise = 0

an :: (Eq b, Eq a) => (b, a) -> (a, b) -> Bool
an a b = a == swap b

an2 a = (a == (swap $ rev a)) && (fst a /= snd a) 

rev x = (snd $ x, d $ snd $ x)
