testing - composing
testBlocksCanCompose
	| f g fg gf |
	f := [:x | x - 1].
	g := [:x | x * 2].
	fg := f compose: g. "f x = (x * 2) - 1"
	self assert: (fg value: 2) = 3.
	
	gf := g compose: f. "gf = (x - 1) * 2"
	self assert: (gf value: 1) = 0.