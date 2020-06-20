repli [] _ = []
repli (x:xs) n = (myRepeat x n) ++ (repli xs n)
  where
    myRepeat x' 1 = [x']
    myRepeat x' n' = x':myRepeat x' (n' - 1)
