dropEvery [] _ = []
dropEvery xs n = go xs 1 []
  where go [] _ acc = acc
        go (x:xs') i acc
          | mod i n == 0 = go xs' (i + 1) acc
          | otherwise = go xs' (i + 1) (acc ++ [x])
