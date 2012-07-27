testing - controlling
testDsetOnlyAffectsOneVariable
	| d p |
	d := DelimitedDynamicVariable default: 0.
	p := DelimitedDynamicVariable default: 0.
	d dset: 1.
	self assert: 0 equals: p dref.