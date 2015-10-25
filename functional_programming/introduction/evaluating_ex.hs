solve :: Double -> Double
solve x =
    sum [ (x ^^ i) / fromInteger (product [1..i]) | i <- [0..9]]


main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words

