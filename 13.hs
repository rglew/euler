module Main where

import Data.Char
import Data.List.Split

main :: IO ()
main = do contents <- fmap (map read . lines) (readFile "bignum.txt")
          --print contents
          print . take 10 . show . sum $ contents
