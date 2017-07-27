quicksort :: [Int] -> [Int]
quicksort [] = []
quicksort (x:xs) = quicksort [x1 | x1 <- xs, x1 < x] ++ [x] ++ quicksort [x2 | x2 <- xs, x2 >= x]
