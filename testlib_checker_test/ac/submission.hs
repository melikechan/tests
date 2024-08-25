import Data.List
import Data.Ord

main :: IO ()
main = do
    n <- readLn :: IO Int
    a <- fmap (map read . words) getLine :: IO [Int]
    let maxIndex = fst $ maximumBy (comparing snd) (zip [0..] a)
    print maxIndex