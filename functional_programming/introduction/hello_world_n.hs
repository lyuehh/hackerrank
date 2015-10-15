hello_worlds :: Int -> IO ()
hello_worlds 0 = return ()
hello_worlds x = do
    putStrLn "Hello World"
    hello_worlds (x-1)

-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
   n <- readLn :: IO Int
   hello_worlds n


