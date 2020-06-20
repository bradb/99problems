split [] n = []
split xs 0 = [xs]
split xs n = go xs [] 1
  where
    go [] acc _ = [acc]
    go ys'@(y:ys) acc i
      | i <= n = go ys (acc ++ [y]) (i + 1)
      | otherwise = [acc, ys']

