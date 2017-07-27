## Recursive Functions

Properties of recursive function can be proved by induction in mathematics.

### tail call elimination

    factorial 0 = 1
    factorial n = n * factorial (n-1)

### Recursion on Lists

1. product

    product [] = 1
    product (x:xs) = x * product xs

    identity: []

2. length

    length [] = 0
    length (_:ns) = 1 + length ns

    identity: []

3. reverse

    reverse [] = []
    reverse (x:xs) = reverse xs ++ [x]

    identity: []

*multiple arguments*

    zip _ [] = []
    zip [] _ = []
    zip (x:xs) (y:ys) = (x,y) : zip xs ys

    identity: []

4. drop

    drop _ [] = []
    drop 0 xs = xs
    drop n (_:xs) = drop (n-1) xs

    identity: []

5. append

    [] ++ ys = ys
    (x:xs) ++ ys = x : (xs ++ ys)

    identity: []

### quicksort

    quicksort :: [Num] -> [Num]
    quicksort [] = []
    quicksort (x:xs) = quicksort [x1 | x1 <- xs, x1 <= x] ++ [x] ++ quicksort [x2 | x2 <- xs, x2 > x]

### replicate

	replicate :: Int -> Int -> [Int]
	replicate 0 _ = []
	replicate n x = x : replicate (n-1) x

### reference

[https://en.wikipedia.org/wiki/Tail_call](https://en.wikipedia.org/wiki/Tail_call)
