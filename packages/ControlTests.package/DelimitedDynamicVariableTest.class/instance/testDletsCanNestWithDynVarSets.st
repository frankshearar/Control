testing
testDletsCanNestWithDynVarSets
	| p d v1 v2|
	p := DelimitedDynamicVariable default: #uninitialized.
	d := DelimitedDynamicVariable default: #uninitialized.
	d, p dlet: #(1 1) in: [
		p dlet: 2 in: [
			v1 := p dref].
		v2 := p dref].
	self assert: 2 equals: v1.
	self assert: 1 equals: v2.
	self assert: #uninitialized equals: p dref.