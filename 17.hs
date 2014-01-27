{-

If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.
-}

module Main where

import Data.Char

sd = [[1,3],[2,3],[3,5],[4,4],[5,4],[6,3],[7,5],[8,5],[9,4],[10,3],[11,6],[12,6],[13,8],[14,8],[15,7],[16,7],[17,9],[18,8],[19,8]]
dd = [[10,3],[20,6],[30,6],[40,5],[50,5],[60,5],[70,7],[80,6],[90,6]]
td = [[100,10],[200,10],[300,12],[400,11],[500,11],[600,10],[700,12],[800,12],[900,11]]


main = print(sum [calc x| x <- [1..1000]])

sgl n a
    | n == 0 = a
    | n < 20 = a + (sd !! (n-1) !! 1)
    | otherwise = 0  

dbl n b
    | (n < 20) = sgl n b 
    | (n > 19) && (n < 100) = let a = b + (dd !! ((n `div` 10)-1) !! 1)
                             in sgl (n `mod` 10) a
    | otherwise = 0

tpl n b
    | (n > 99) && (n < 1000) = let a = b + (td !! ((n `div` 100)-1) !! 1)
                               in if n `mod` 100 == 0 
                                  then dbl (n `mod` 100) a
                                  else dbl (n `mod` 100) a+3
    | otherwise = 0

calc n 
   | (n > 0) && (n < 20) = sgl n 0
   | (n > 19) && (n < 100) = dbl n 0
   | (n > 99) && (n < 1000) = tpl n 0
   | (n == 1000) = 11
   | otherwise = 0
 
