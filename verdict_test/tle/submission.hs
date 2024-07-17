import Data.List

main :: IO ()
main = do
    n <- readLn :: IO Int
    loop n

loop :: Int -> IO ()
loop n = do
    print n
    loop (n)
