testing
testShiftReifiesStackAsFunction
	self assert: (1 + [2 + [ :k | 3 + (k value: 4) ] shift ] reset) = 10.
	self assert: (1 + [2 + [:k | 3 + (k value: 5) + (k value: 1)] shift ] reset) = 14.