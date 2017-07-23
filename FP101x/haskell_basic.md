### The Karate Kid

### practice, practice, practice

### expressions

    1 + 2
    2 * 4

### standard library functions

1. head: select the first element of lists
2. tail: remove the first element of lists
3. !!: select nth element of lists
    [1..10] !! 2
4. take n list: select first n elements of list
5. product list: calculate the product of list
6. sum list: calculate the sum of list
7. reverse list: reverse the elements of list
8. ++: append two lists
    [1..5] ++ [6..10]  //print: [1,2,3,4,5,6,7,8,9,10]

### function applications

in mathematics: f(a, b) + cd
in haskell: f a b + c * d

    mathematics     haskell
    f(x)            f x
    f(x, y)         f x y
    f(g(x))         f (g x)
    f(x, g(y))      f x (g y)
    f(x)g(y)        f x * g y

function applications in haskell are more lightweight and compact, look beautiful.

### load scripts

1. edit a file with .hs suffix
2. run `ghci name.hs` to load the script
3. in ghci repl, you can use the function defined in name.hs

*x `f` y* the syntax sugar of *f x y*

### reload scripts

in ghci, type `:reload`

### name convetions

1. function and arguments must start with lower letters

### useful ghci commands

1. `:load` load script
2. `:reload` reload scripts
3. `:edit name` edit script name
4. `:edit` edit current script
5. `type expr` show type of expr
6. `:?` show all ghci commands
7. `:quit` quit ghci
