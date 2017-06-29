module P2 where

myButLast :: [a] -> a
myButLast [x, _] = x
myButLast (_:xs) = myButLast xs
myButLast _ = error "list must have at least two elements"
