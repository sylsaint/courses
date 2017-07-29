## High-Order Functions

### Basics

1. Common programming idioms
2. Domain specific Languages can be defined as Collections of High-Order Functions
3. Algebraic properties of high-order functions can be used to reason about programs

### Examples

1. map

    map :: (a -> b) -> [a] -> [b]

2. filter

    filter :: (a -> Bool) -> [a] -> [a]

*high-order functions can defined using recursive way*

### foldr

functions as map or filter can be defined as the following pattern

    f [] = v 
    f (x:xs) = x Θ (f xs)

the high-order library function `foldr` encapsulates this simple pattern of recursion,
width the function Θ and v as arguments.

    sum     = foldr (+) 0
    product = foldr (*) 1
    or      = foldr (||) False
    and     = foldr (&&) True

*definition*

    foldr :: (a -> b -> b) -> b -> [a] -> b
    foldr f v [] = v
    foldr f v (x:xs) = f x (foldr f v xs)


    sum [1,2,3]
    foldr (+) 0 (1:(2:(3:[]))) // replace every : with + and every [] with 0
    (1+(2+(3+0)))

### other foldr examples

### good parts

1. some recursive function on lists are simpler to define on foldr
2. properties of functions using foldr can be proved using algebraic properties of foldr
3. advanced program optimizations can be simpler if foldr is used in place of explicit recursion

### other standard functions

1. (.) function returns the composition of two functions as a single function

    (.) :: (b -> c) -> (a -> b) -> (a -> c)
    f . g = \x -> f ( g x )

2. all

    all :: (a -> Bool) -> [a] -> Bool
    all f xs = and [f x | x <- xs]

    all   = foldr f 
    foldr :: (a -> Bool) -> [a] -> Bool
    foldr _ [] = True
    foldr f (x:xs) = f x && (foldr f xs)

3. takeWhile

    takeWhile :: ( a -> Bool) -> [a] -> [a]
    takeWhile _ [] = []
    takeWhile f (x:xs) | f x == True = x : (takeWhile f xs)
                       | otherwise   = []

    // foldr
    takeWhile = foldr f 
    foldr _ [] = []
    foldr f (x:xs) = f x : (foldr f xs)

4. dropWhile
