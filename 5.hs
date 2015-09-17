-- brute force
evenlyDivisible max n =
	let
		divisible x = n `mod` x == 0
	in
		and $ map divisible [1 .. max]

main =
	-- takes shitload of time to complete (never does for 20!)
	print $ head $ dropWhile (not . evenlyDivisible 10) [1 ..]


-- math solution: not found :)
