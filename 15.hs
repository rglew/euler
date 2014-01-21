{-
 -
 -
 - Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
 -
 - How many such routes are there through a 20×20 grid?
 -
 -
 - Code is mine but the solution from:
 - http://en.wikipedia.org/wiki/Pascal%27s_triangle
 - http://blog.functionalfun.net/2008/07/project-euler-problem-15-city-grids-and.html
 -
 - Pascal's triangle formula...  
 - # of routes occurs in the triangle at row 2n, column n
 - -}
module Main where

main = do 
       print (pt !! 40 !! 20)
       print (alternate 20)

next :: Num c => [c] -> [c]
next xs = zipWith (+) ([0] ++ xs) (xs ++ [0])

pt :: [[Integer]]
pt = iterate next [1]

alternate n = (product [1..n*2]) `div` product [1..n] ^ 2
