module Thirteen where

import Data.Char
import Data.List.Split

main = do contents <- fmap (map read . lines) (readFile "bignum.txt")
          print . take 10 . show . sum $ contents
