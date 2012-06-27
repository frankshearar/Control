testing
testDynamicVariablesUseDefaultValues
	| p |
	p := DelimitedDynamicVariable default: #uninitialized.
	self
		assert: p default
		equals: p dref.