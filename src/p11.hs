module P11 where

import P9 (pack)

data Encoding a =
  Multiple Int a |
  Single a deriving (Show)

encodeModified :: (Eq a) => [a] -> [Encoding a]
encodeModified xs =
  let grouped = pack xs
  in map (\x -> if (length x) == 1
           then
             Single (head x)
           else
             (Multiple (length x) (head x)))
     grouped
