import Data.List
import Data.Ord

main :: IO ()
main = do
    n <- readLn :: IO Int
    a <- fmap (map read . words) getLine :: IO [Int]
    print (-1)