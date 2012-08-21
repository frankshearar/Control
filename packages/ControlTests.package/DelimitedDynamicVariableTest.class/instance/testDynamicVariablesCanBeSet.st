testing
testDynamicVariablesCanBeSet
	| p |
	p := DelimitedDynamicVariable default: #uninitialized.
	p dlet: 99 in: [
		self assert: 99 equals: p dref].