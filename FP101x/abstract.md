### Type and Classes

#### Type

A type is a name with a collection of related values, which obey the specific rules.
That is to say, A type is a name alias for such a set within it all the values share
the same rules described by the set.

if evaluating a expression `e` would produce a type `t`, we call expression `e` has type `t`,
written
    e::t

`:type` can tell us the type of an expression

    :type True //output: True :: Bool

All type errors are found at compile time.

#### Type Errors

Apply a function to one or more arguments with the wrong type is called type error.

#### Basic Types

    Bool    - logic values
    Char    - single characters
    String  - strings of characters
    Int     - fixed precision integers
    Integer - arbitrary-precision integers
    Float   - floating-point numbers

1. list: list a generic type, holds a sequence of values with the same type

    Prelude> :type [1,2,3]
    [1,2,3] :: Num t => [t]
    Prelude> :type ['a','b','c']
    ['a','b','c'] :: [Char]
    Prelude> :type ["a","b","c"]
    ["a","b","c"] :: [[Char]]

2. tuple: is a sequence of values with differenct types

    Prelude> :type (True, False)
    (True, False) :: (Bool, Bool)
    Prelude> :type (True, '1', "22")
    (True, '1', "22") :: (Bool, Char, [Char])

#### Function Types

A function maps type a to type b, func:: a -> b

    Prelude> :type fst
    fst :: (a, b) -> a
    Prelude> :type head
    head :: [a] -> a

#### Curried functions

Functions take arguments one at a time are called curried functions, celebrating 
the work of Haskell Curry on such functions.

curried functions are more flexible than functions take tuples, because useful
functions can often be partially applying 

reference:

[https://en.wikipedia.org/wiki/Currying](https://en.wikipedia.org/wiki/Currying)

*currying convetions*

in order to avoid excess parentheses when using curried functions, we make the `->`
right associative.

    Int -> (Int -> ( Int -> Int)) is equivalent to
    Int -> Int -> Int -> Int

As a consequence, function application are left associative.

    mult x y z <=>
    ((mult x) y) z

#### Polymorphic functions

Polymorphic function: its type are generic type, which can be several types it contains.

    Prelude> :type length
    length :: Foldable t => t a -> Int

polymorphic functions:

1. fst
2. head
3. take
4. zip
5. id

#### overloaded functions

A polymorphic function is called overloaded if its type contains one ore more class constraints.

Haskell type classes

1. Num
2. Eq
3. Ord

    Prelude> :type (+)
    (+) :: Num a => a -> a -> a
    Prelude> :type (<)
    (<) :: Ord a => a -> a -> Bool
    Prelude> :type (==)
    (==) :: Eq a => a -> a -> Bool


