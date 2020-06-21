insertAt x xs 1 = x:xs
insertAt x (y:ys) i = y:(insertAt x ys (i - 1))
