testing - controlling
testDsetCanAffectDefaultValue
	| d p |
	d := DelimitedDynamicVariable default: 0.
	p := DelimitedDynamicVariable default: 0.
	d dset: 1.
	self assert: 1 equals: d dref.