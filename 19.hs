import Data.Time.Calendar
import Data.Time.Calendar.WeekDate
 
main = print (answer)

answer = length [() | y <- [1901..2000], 
                             m <- [1..12],
                             let (_, _, d) = toWeekDate $ fromGregorian y m 1,
                             d == 7]

my_answer = 171
