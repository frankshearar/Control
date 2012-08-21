testing - composing
testCompositionLeftAssociates
	| f g fg gf |
	f := [:x | x - 1].
	g := [:x | x * 2].
	fg := f compose: g. "fg x = (x * 2) - 1"
	self assert: (fg value: 1) = 1.
	
	gf := g compose: f. "gf = (x - 1) * 2"
	self assert: (gf value: 1) = 0.