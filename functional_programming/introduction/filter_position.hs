f :: [Int] -> [Int]
f lst = -- Fill up this Function
    [lst !! x | x <- [1..length lst-1], x `mod` 2 == 1]

-- This part deals with the Input and Output and can be used as it is. Do not modify it.
main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
