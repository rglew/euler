module Main where

import Data.Char
import Data.List

main =
    do input <- readFile "22-names.txt"
       let srtdnms = sort $ read$"["++ input++"]"
       let scores = zipWith score srtdnms [1..]
       print (sum scores)
  where score w i = (i *) . sum . map (\x->alphapos x) $ w

alphapos n = ord n - ord 'A' + 1
