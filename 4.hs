module Main where

import Control.Applicative

main = do

   print (maximum [x | x <- (*) <$> [1..999] <*> [1..999], isPalindrome x])

isPalindrome :: Show a => a -> Bool
isPalindrome z = show z == (reverse $ show z)
