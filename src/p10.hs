module P10 where

import P9 (pack)

encode :: (Eq a) => [a] -> [(Int, a)]
encode xs =
  let grouped = pack xs
  in map (\x -> ((length x), head x)) grouped
