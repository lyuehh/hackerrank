import Text.Printf (printf)

-- This function should return a list [area, volume].
solve :: Int -> Int -> [Int] -> [Int] -> [Double]
solve l r a b = --Complete this function--
    sum [ fromIntegral(i * l ^ j) | i <- a, j <- b]
    -- ++ [sum [ fromIntegral(i * r ^ j) | i <- a, j <- b]]

--Input/Output.
main :: IO ()
main = getContents >>= mapM_ (printf "%.1f\n"). (\[a, b, [l, r]] -> solve l r a b). map (map read. words). lines

