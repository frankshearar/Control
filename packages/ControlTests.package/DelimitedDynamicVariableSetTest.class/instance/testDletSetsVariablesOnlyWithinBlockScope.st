testing - controlling
testDletSetsVariablesOnlyWithinBlockScope
	| d p |
	d := DelimitedDynamicVariable default: 0.
	p := DelimitedDynamicVariable default: 0.
	d, p dlet: #(1 2) in: [].
	self assert: 0 equals: d dref.
	self assert: 0 equals: p dref.