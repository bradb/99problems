module P6 where

import P5 (myReverse)

isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == myReverse xs
