module P1 where

myLast :: [a] -> a
myLast [x] = x
myLast (_:xs) = myLast xs
myLast _ = error "empty list"
