-- a is the previous maxPathSum row, b is the next row of triangle data with a + 1 elements
genNextMaxPathSum a b = zipWith (max) (zipWith (+) (0 : a) b) (zipWith (+) (a ++ [0]) b)
