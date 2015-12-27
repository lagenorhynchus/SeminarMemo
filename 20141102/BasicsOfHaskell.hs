module BasicsOfHaskell where

import Data.Char (chr, ord)

main :: IO ()
main = do
  print h
  print w
  where
    h = "Hello,"
    w = "world!"

fact :: Integral a => a -> a
fact 0 = 1
fact n = n * fact (n - 1)

fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1
fib n = fib (n - 2) + fib (n - 1)

fib2 :: Integral a => a -> a
fib2 n
  | n == 0    = 0
  | n == 1    = 1
  | otherwise = fib2 (n - 2) + fib2 (n - 1)

fib3 :: Integral a => a -> a
fib3 n =
  case n of
    0 -> 0
    1 -> 1
    _ -> fib3 (n - 2) + fib3 (n - 1)

take' :: Integral a => a -> [b] -> [b]
take' _ [] = []
take' n (x:xs)
  | n <= 0    = []
  | otherwise = x : take' (n - 1) xs

drop' :: Integral a => a -> [b] -> [b]
drop' _ [] = []
drop' n l@(_:xs)
  | n <= 0    = l
  | otherwise = drop' (n - 1) xs

reverse' :: [a] -> [a]
reverse' []     = []
reverse' (x:xs) = reverse' xs ++ [x]

reverse'' :: [a] -> [a]
reverse'' l = rev l []
  where
    rev [] rs     = rs
    rev (x:xs) rs = rev xs $ x : rs

sum' :: Num a => [a] -> a
sum' []     = 0
sum' (x:xs) = x + sum' xs

product' :: Num a => [a] -> a
product' []     = 1
product' (x:xs) = x * product' xs

fact' :: Integral a => a -> a
fact' n = product' [1..n]

perpPoint (p, q) (a, b, c) = (x, y)
  where
    x = (a * c + b * d) / (a ^ 2 + b ^ 2)
    y = (b * c - a * d) / (a ^ 2 + b ^ 2)
    d = b * p - a * q

rot13 :: String -> String
rot13 []     = []
rot13 (x:xs) = rot13ch x : rot13 xs
  where
    rot13ch ch
      | ch >= 'A' && ch <= 'M' || ch >= 'a' && ch <= 'm'
        = chr $ ord ch + 13
      | ch >= 'n' && ch <= 'z' || ch >= 'n' && ch <= 'z'
        = chr $ ord ch - 13
      | otherwise = ch

insertionSort :: Ord a => [a] -> [a]
insertionSort []     = []
insertionSort (n:ns) = insert n $ insertionSort ns
  where
    insert x [] = [x]
    insert x (y:ys)
      | x < y     = x : y : ys
      | otherwise = y : insert x ys

insertionSort' :: Ord a => [a] -> [a]
insertionSort' []     = []
insertionSort' (n:ns) = insert n $ insertionSort' ns
  where
    insert x [] = [x]
    insert x (y:ys)
      | x < y     = x : y : ys
      | otherwise = y : insert x ys

bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []
bubbleSort l  = last ns : bubbleSort (init ns)
  where
    ns = swap l
    swap [x] = [x]
    swap (x1:x2:xs)
      | x1 < x2   = x2 : swap (x1 : xs)
      | otherwise = x1 : swap (x2 : xs)

bubbleSort' :: Ord a => [a] -> [a]
bubbleSort' [] = []
bubbleSort' l  = n : bubbleSort' ns
  where
    (n:ns) = swap l
    swap [x] = [x]
    swap (x:xs)
      | x > y     = y : x : ys
      | otherwise = x : y : ys
      where
        (y:ys) = swap xs

mergeSort :: Ord a => [a] -> [a]
mergeSort []  = []
mergeSort [n] = [n]
mergeSort l   = merge (mergeSort $ take half l) (mergeSort $ drop half l)
  where
    half = length l `div` 2
    merge [] []    = []
    merge [] right = right
    merge left []  = left
    merge left@(x:xs) right@(y:ys)
      | x < y     = x : merge xs right
      | otherwise = y : merge left ys

quickSort :: Ord a => [a] -> [a]
quickSort []     = []
quickSort (n:ns) = quickSort lt ++ [n] ++ quickSort gteq
  where
    lt   = [x | x <- ns, x < n]
    gteq = [x | x <- ns, x >= n]

triangles =
  [(a, b, c) | c <- [1..20], b <- [1..c], a <- [1..b],
    a ^ 2 + b ^ 2 == c ^ 2]
