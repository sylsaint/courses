quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort [x1 | x1 <- xs, x1 < x] ++ [x] ++ quicksort [x2 | x2 <- xs, x2 >= x]


rep :: Int -> Int -> [Int]
rep 0 _ = []
rep n x = x : rep (n-1) x

seln :: [a] -> Int -> a
seln (x:_) 0 = x
seln (x:xs) n = seln xs (n-1)

inl :: Eq a => a -> [a] -> Bool 
inl x [] = False 
inl x (y:ys) | x == y    = True
             | otherwise = inl x ys 
