import Control.Monad

main :: IO ()
main = do
    n <- readLn :: IO Int
    let arr = [1..100000000] :: [Integer]
    mapM_ print arr
   
