module Nineteen where

import Data.Time.Calendar
import Data.Time.Calendar.WeekDate
 
problem_nineteen = length [() | y <- [1901..2000], 
                             m <- [1..12],
                             let (_, _, d) = toWeekDate $ fromGregorian y m 1,
                             d == 7]

