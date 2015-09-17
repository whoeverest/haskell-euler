divisible n = n `mod` 3 == 0 || n `mod` 5 == 0

main :: IO ()
main =
	print $ sum $ filter divisible [1..999]