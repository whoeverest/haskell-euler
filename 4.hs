isPalindrome n =
	let
		s = show n
	in
		(show s) == (reverse $ show s)

products l = [x * y | x <- l, y <- l]

main =
	let
		palindromes = filter isPalindrome $ products [1..999]
	in
		print $ maximum palindromes