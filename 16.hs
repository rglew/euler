{-
 -
 - 215 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
 -
 - What is the sum of the digits of the number 21000?
 - -}

module Sixteen where

import Data.Char

problem_sixteen = sum $ map digitToInt $ show (2^1000)
