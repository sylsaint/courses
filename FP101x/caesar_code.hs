import Data.Char

shift :: Int -> Char -> Char
shift n c | isLower c = chr(ord 'a' + (ord c + n - ord 'a') `mod` 26)
          | isUpper c = chr(ord 'A' + (ord c + n - ord 'A') `mod` 26)
          | otherwise = c

encode :: Int -> [Char] -> [Char]
encode n xs = [shift n c | c <- xs]

caesar :: [Char] -> [Char]
caesar xs = encode 13 xs
