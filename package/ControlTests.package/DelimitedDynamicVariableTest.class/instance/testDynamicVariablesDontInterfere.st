testing
testDynamicVariablesDontInterfere
	| p d v1 v2 |
	p := DelimitedDynamicVariable default: 0.
	d := DelimitedDynamicVariable default: 0.
	p dlet: 1 in: [
		d dlet: 2 in: [
			v1 := p dref.
			v2 := d dref]].
	self assert: 1 equals: v1.
	self assert: 2 equals: v2.