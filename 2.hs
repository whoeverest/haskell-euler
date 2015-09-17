fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
isSmall n = n < 4000000
isValid n = n `mod` 2 == 0

main =
	let
		small = takeWhile isSmall fibs
		valid = filter isValid small
	in
		print $ sum valid