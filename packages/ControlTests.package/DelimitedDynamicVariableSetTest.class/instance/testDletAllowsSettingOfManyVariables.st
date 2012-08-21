testing - controlling
testDletAllowsSettingOfManyVariables
	| d p q |
	d := DelimitedDynamicVariable default: 0.
	p := DelimitedDynamicVariable default: 0.
	q := DelimitedDynamicVariable default: 0.
	d, p, q dlet: #(1 2 3) in: [
		self assert: 1 equals: d dref.
		self assert: 2 equals: p dref.
		self assert: 3 equals: q dref.
	]