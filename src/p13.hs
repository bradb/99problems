module P13 where

data Encoding a =
  Multiple Int a |
  Single a
  deriving (Show)

encodeDirect :: Eq a => [a] -> [Encoding a]
encodeDirect [] = []
encodeDirect xs = foldr encFoldr [] xs
  where encFoldr c [] = [Single c]
        encFoldr c (Single e:encs) =
          if c == e
          then (Multiple 2 e):encs
          else (Single c):(Single e):encs
        encFoldr c (Multiple n e:encs) =
          if c == e
          then (Multiple (n + 1) c):encs
          else (Single c):(Multiple n e):encs
