range x y
  | x == y = [x]
  | otherwise = x:range (x + 1) y
