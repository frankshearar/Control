testing
testDletsCanNest
	| p v1 v2|
	p := DelimitedDynamicVariable default: #uninitialized.
	p dlet: 1 in: [
		v1 := p dref.
		p dlet: 2 in: [v2 := p dref]].
	self assert: 1 equals: v1.
	self assert: 2 equals: v2.
	self assert: #uninitialized equals: p dref.