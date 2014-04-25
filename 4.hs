-- A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 x 99.
-- Find the largest palindrome made from the product of two 3-digit numbers.


module Four where

import Control.Applicative

problem_four = do

   print (maximum [x | x <- (*) <$> [1..999] <*> [1..999], isPalindrome x])

isPalindrome :: Show a => a -> Bool
isPalindrome z = show z == (reverse $ show z)
