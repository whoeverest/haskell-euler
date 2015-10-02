import qualified Data.Char as C

--prod :: Num a => [a] -> Int -- this type no worky, why?
prod l = foldl (*) 1 l

-- Sliding chunks, returns a list of chunks with n elements:
-- chunk 3 [1, 2, 3, 4] == [[1, 2, 3], [2, 3, 4]]
chunk :: Int -> [a] -> [[a]]
chunk _ [] = []
chunk n (x:xs) =
    let
        chunks = [take n (x:xs)] ++ (chunk n xs)
    in
        filter (\l -> length l == n) chunks

findMaxProd :: String -> Int
findMaxProd s =
    let
        digits = map C.digitToInt s
        chunks = chunk 13 digits
        products = map prod chunks
    in
        maximum products

main =
    do 
        bigNumber <- readFile "big-number.txt"
        print $ findMaxProd bigNumber