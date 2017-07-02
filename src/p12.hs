module P12 where

import P11

decodeModified :: [Encoding a] -> [a]
decodeModified [] = []
decodeModified (x:xs) = d ++ decodeModified xs
  where d = case x of
          (Multiple n a) -> replicate n a
          (Single a) -> [a]

