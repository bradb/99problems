removeAt i xs = go i [] xs
  where go j acc (x':xs')
          | j == 1 = (x', acc ++ xs')
          | otherwise = go (j - 1) (acc ++ [x']) xs'
