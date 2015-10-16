solve :: Double -> Double
solve x =
    sum [ (x ^^ i) / fromInteger (product [1..i]) | i <- [0..9]]

-- [5 ^^ i | i <- [0..5]]
-- [(5 ^^ i) / (map realToFrac (product [1..i])) | i <- [0..5]]
-- [(5 ^^ i) `div` (map realToFrac (product [1..i])) | i <- [0..5]]
-- [fromIntegral (5 ^^ i) `div` (product [1..i]) | i <- [0..5]]
-- (product [1..5])
-- [ 2 ^^ i / (product [1..i]) | i <- [1..5]]
-- [ 2^i  `div` j | i <- [1..5], let j=i]
-- [ 2^i / fromInteger (product [1..j]) | i <- [1..5], let j=i]



main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words

