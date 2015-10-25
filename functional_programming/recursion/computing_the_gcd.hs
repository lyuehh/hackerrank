module Main where

gcd' :: Integral a => a -> a -> a
gcd' n m = gcd1 (abs n) (abs m) where
    gcd1 a 0 = a
    gcd1 a b = gcd1 b (a `rem` b)

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)

