testing
testShiftReifiesStackAsFunction
	"Stack reified as [:x | 2 + x] so the expression reduces to
		(1 + (3 + [:x | 2 + x] value: 4))
		== (1 + (3 + (2 + 4)))
		== 10."
	self assert: (1 + [ 2 + [ :k | 3 + (k value: 4) ] shift ] reset) = 10.
	
	"Stack again reified as [:x | 2 + x] so the expression reduces to
		(1 + (3 + [:x | 2 + x] value: 5 + [:x | 2 + x] value: 1))
		== (1 + (3 + (2 + 5) + (2 + 1)))
		== 14."
	self assert: (1 + [ 2 + [ :k | 3 + (k value: 5) + (k value: 1) ] shift ] reset) = 14.