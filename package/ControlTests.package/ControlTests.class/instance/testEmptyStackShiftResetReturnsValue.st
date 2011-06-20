testing
testEmptyStackShiftResetReturnsValue
	self assert: 1 = [ [:k | k value: 1] shift] reset.