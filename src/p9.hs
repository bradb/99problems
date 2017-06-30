module P9 where

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack (x:xs) = [x : matchingXs] ++ pack(remainingXs)
  where matchingXs = takeWhile (==x) xs
        remainingXs = dropWhile (==x) xs
