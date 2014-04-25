-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

-- Probably supposed to code up a sieve of Erastothenes here but that's boring.  Am importin OneillPrimes which is awesome..nd exceedingly quick.
-- http://www.haskell.org/haskellwiki/Prime_numbers

module Ten where 

import ONeillPrimes (primesToLimit)

problem_ten = sum $ primesToLimit 2000000


