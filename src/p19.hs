rotate xs 0 = xs
rotate [] _ = []
rotate xs'@(x:xs) n
  | n < 0 = rotate xs' (length xs' + n)
  | otherwise = rotate (xs ++ [x]) (n - 1)
