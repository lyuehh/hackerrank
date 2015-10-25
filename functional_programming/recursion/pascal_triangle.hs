zapWith :: (a -> a -> a) -> [a] -> [a] -> [a]
zapWith f xs [] = xs
zapWith f [] ys = ys
zapWith f (x:xs) (y:ys) = f x y : zapWith f xs ys

extendWith f [] = []
extendWith f xs@(x:ys) = x : zapWith f xs ys

pascal = iterate (extendWith (+)) [1]

run n = do
    putStr $ unlines $ map unwords $ map (map show) $ (take n pascal)

main = do
    n <- readLn :: IO Int
    -- putStrLn $ show n
    run n

