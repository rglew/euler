

--2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
--What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?


module Five where

problem_five = divisibleTo 20
 

-- basic technique seems to be to divisible by X, x-1 ,x-2 etc...
-- can be recursive
-- start at 2520

isDivisibleTo ::  Integer -> Integer -> Bool
isDivisibleTo x n = all (\i -> n `mod` i == 0) (reverse [1..x])

divisibleTo ::  Integer -> Integer
divisibleTo 1 = 1
divisibleTo x = let step = divisibleTo (x-1)
                in  head $ filter (isDivisibleTo x) [step,2*step..]

