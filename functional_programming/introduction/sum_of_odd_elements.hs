
f arr = -- Fill up this function body
    sum $ filter odd arr

-- This part handles the Input/Output and can be used as it is. Do not change or modify it.
main = do
   inputdata <- getContents
   -- putStrLn(show(f(map (read :: String -> Int) (lines inputdata))))
   putStrLn $ show $ f $ map (read :: String -> Int) $ lines inputdata

