
run a b = do
    putStrLn $ concat $ map (\(x,y) -> [x,y]) $ zip a b



main = do
    a <- getLine
    b <- getLine
    run a b
    -- putStrLn a
    -- putStrLn b

