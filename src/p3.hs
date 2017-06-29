module P3 where

elementAt :: [a] -> Integer -> a
elementAt (x:_) 1 = x
elementAt (_:xs) i = elementAt xs (i - 1)
elementAt _ i =
  error $ "can't determine element " ++ (show i) ++ " of list"
