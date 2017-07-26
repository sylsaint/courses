## lambda

### lambda expression

Function can be constructed with naming the function by lambda expressions.

    λx -> x + x

1. the symbol λ is greek letter lambda, and is typed at keyboard as back slash \\.


### why lambda is useful

1. Lambda expression can give a formal meaning to function defined using currying.

    add x y = x + y
    add = λx -> (λy -> x + y)

2. Lambda expressin are also useful when defining functions return function as result

3. Lambda expressions can be used to avoid nameing functions which are only referenced once.

### sections

An operator written between its two arguments can converted to curried function written before
two arguments by using parentheses.

    1 + 2
    (+) 1 2

This convetion also allows one argument included in the parentheses

    (1+) 2 // 3
    (+2) 1 // 3

generally, if ⊙ is an operator, then functions of the forms (⊙y), (x⊙), (⊙) are called sections.


### reference

[https://en.wikipedia.org/wiki/Lambda_calculus](https://en.wikipedia.org/wiki/Lambda_calculus)
