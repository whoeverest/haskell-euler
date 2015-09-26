isPrime n =
	let
		notDivisible a = n `mod` a /= 0
	in
		and $ map notDivisible [2 .. n-1]

primes = filter isPrime [2 ..]

largestFactor (x:xs) 1 = x
largestFactor (x:xs) n =
	if n `mod` x == 0
	then largestFactor (x:xs) (n `div` x)
	else largestFactor xs n

main =	print $ largestFactor primes 600851475143
