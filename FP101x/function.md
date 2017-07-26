## Defining Functions

### conditional expressions

    abs :: Int -> Int
    abs n = if n >= 0 then n else -n

*conditional expressions can be nested*

    signum :: Int -> Int
    signum n = if n > 0 then 1 else
                  if n == 0 then 0 else -1

### guarded equations

as alternative to conditional expressions, functions can be defined using
guarded equations.

    abs n | n >= 0 = n
          | elsewise -n


    signum n | n > 0    = 1
             | n == 0   = 0
             | elsewise = -1

### pattern matching

many functions have a particularly clear definition using pattern matching
on their arguments.

functions can be defined in many ways using pattern matching.

    (&&) :: Bool -> Bool -> Bool
    True && True   = True
    True && False  = False
    False && True  = False
    False && False = False

    //compact syntax, _ stands for a placeholder
    True && True = True
    _    && _    = False


patterns are matching in order, the following always returns False

    _ && _ = False
    True && True = True

patterns may not repeat variables, the following definition gives an
error.

    b && b = b
    _ && _ = False

patterns are matched: left to right, top to bottom

### list patterns

internally, all the lists are constructed by repeatly using an operator(:)
called cons.

functions on list can be defined using x:xs pattern

    head (x:_) = x
    tail (_:xs) = xs

