testing - controlling
testDsetMutatesValueAtGivenScope
	| d p v1 v2 v3 v4 |
	d := DelimitedDynamicVariable default: #uninitialized.
	p := DelimitedDynamicVariable default: #uninitialized.
	d, p dlet: #(1 1) in: [
		p dset: 5.
		v1 := p dref.
		d, p dlet: #(2 2) in: [
			v2 := p dref.
			p dset: 6.
			v3 := p dref].
		v4 := p dref].
	self assert: 5 equals: v1.
	self assert: 2 equals: v2.
	self assert: 6 equals: v3.
	self assert: 5 equals: v4.
	self assert: #uninitialized equals: p dref.