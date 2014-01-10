-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
-- Find the sum of all the primes below two million.

-- Probably supposed to code up a sieve of Erastothenes here but that's boring.  Am importin OneillPrimes which is awesome..nd exceedingly quick.

module Main where 

import ONeillPrimes (primesToLimit)

main = print (sum $ primesToLimit 2000000)


