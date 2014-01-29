{-

By starting at the top of the triangle below and moving to adjacent numbers on the row below, the maximum total from top to bottom is 23.

3
7 4
2 4 6
8 5 9 3

That is, 3 + 7 + 4 + 9 = 23.

Find the maximum total from top to bottom in triangle.txt (right click and 'Save Link/Target As...'), a 15K text file containing a triangle with one-hundred rows.

NOTE: This is a much more difficult version of Problem 18. It is not possible to try every route to solve this problem, as there are 299 altogether! If you could check one trillion (1012) routes every second it would take over twenty billion years to check them all. There is an efficient algorithm to solve it. ;o)
-}

module Main where

import Data.Char
import Data.List.Split
import System.IO

main :: IO ()
main = do contents <- readFile "67-triangle.txt"
          let source = map (map readInt . words) . lines $ contents
          print (solve source)
readInt :: String -> Int
readInt = read

solve tri = head $ foldr1 g tri 
  where
    f x y z = x + max y z
    g xs ys = zipWith3 f xs ys $ tail ys

