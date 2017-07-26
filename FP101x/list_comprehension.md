## list comprehension

### set comprehension

In mathematics, new set can be constructed from old set.

### lists comprehensions

In Haskell, new lists can be constructed from old lists.

    [x^2 | x <- [1..5]] //output: [1,4,9,16,25]

`x <- [1..5]` are called generators, because it states how to generate values for x.

comprehensions can have multiple generators, seperated by commas.

    [(x,y) | x <- [1..5], y <- [1..3]]
    //cartesian product

changing the order of generators changes the position of elements in the final list.

### Dependant generators

Later generators can depend on the variables that are introduced by earlier generators.

With the help of dependant generators, we can flatten a list of lists.

    [x | xs <- xxs, x <- xs]

### Guards

List comprehensions can use guards to filter the values produced by earlier generators.

    [x | x <- [1..5], even x]

### zip

	Prelude> pairs ns = zip ns (tail ns)
	Prelude> pairs [1,2,3,4]
	[(1,2),(2,3),(3,4)]
	Prelude> sorted ns = and [x <= y | (x, y) <- pairs ns]
	Prelude> sorted [1,2,3,4]
	True
	Prelude> sorted [1,3,2,4]
	False
	Prelude> positions x xs = [i | (y, i) <- zip xs [0..n], x == y] where n = length xs - 1
	Prelude> positions 4 [1,3,4,5,6,4,9,2,4,0]
	[2,5,8] 

polymorphic function also applies to string.

### reference

[https://en.wikipedia.org/wiki/Halting_problem](https://en.wikipedia.org/wiki/Halting_problem)
