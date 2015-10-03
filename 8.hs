import Data.Char


convertToInt :: String -> [Int]
convertToInt l = map digitToInt l

largestAdjProd :: [Int] -> Int -> Int -> Int
largestAdjProd l maxProd adj
    | length (take adj l) < adj = maxProd
    | otherwise =
        let
            listProduct l = foldl (*) 1 l
            product = listProduct (take adj l)
            newMax = max product maxProd
        in
            largestAdjProd (tail l) newMax adj
    
main :: IO ()
main = do
    number <- readFile "big-number.txt"
    print $ largestAdjProd (convertToInt number) 0 13
