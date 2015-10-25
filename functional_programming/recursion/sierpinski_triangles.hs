sierpinski 0 = ["*"]
sierpinski n = map((space ++) . (++ space)) down ++
    map (unwords . replicate 2) down
        where down = sierpinski (n - 1)
              space = replicate (2 ^ (n - 1)) ' '


run n = do
    mapM_ putStrLn $ sierpinski n

main = do
    n <- readLn :: IO Int
    -- putStrLn $ show n
    run n

