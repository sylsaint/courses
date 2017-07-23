### Basic Concepts

#### Expression vs Statement

In programming language terminology, an expression is a combination of values and functions that are combined and interpreted by the compiler to create a new value, 
as opposed to a statement which is just a standalone unit of execution and doesnt return anything.

Commonly speaking, we can chain expressions together to make return a value, which can be pure and makes no side effects. But statements have implicit side effects, 
they communicate or interact with the help of mutating global status.

reference:

[https://fsharpforfunandprofit.com/posts/expressions-vs-statements/](https://fsharpforfunandprofit.com/posts/expressions-vs-statements/)

#### Background

##### 1930s -- Alonzo Church

Alonzo Church developed the theory of lambda calculus. What he means is to create a foundation of mathematics, but lambda calculus became the basis of programming
language.

Lambda Calculus: is a formal system in mathematic logic for expression computation for function abstraction and application using variable binding and substitution.

reference:

[https://en.wikipedia.org/wiki/Lambda_calculus](https://en.wikipedia.org/wiki/Lambda_calculus)

##### 1950s -- John MacCarthy

John MacCarthy develops Lisp, a functional programming language but retains variable assignments.

##### 1960s -- Peter Landin

Peter Landin develops the first pure functional programming language, without assignments, which named ISWIM()

##### 1970s -- John Backus

John backus develops FP, a programming language which emphasizes on high-order functions and reasoning about programs.

reference:

[https://en.wikipedia.org/wiki/FP_(programming_language)](https://en.wikipedia.org/wiki/FP_\(programming_language\))

##### 1970s -- Robin Milner

Robin Milner and others develop ML, the first modern functional language, which introduces the type inference and polymorhpic types.

##### 1970s-1980s -- David Turner

David Turner develops several lazy functional languages, culminating in Miranda systems.

##### 1987 Haskell

An international committee of researchers initiates the development of Haskell, a functional lazy programming language.

