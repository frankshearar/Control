testing
testNestedShiftResetsNest
	| innerCont outerCont |
	[1 + [ :k |
		outerCont := k. "stack reified as [ :x | 1 + x ]"
		k value: [ 2 + [ :kk |
				innerCont := kk. "stack reified as [ :x | 2 + x ]"
				kk value: 0 ] shift ] reset ] shift ] reset.

	self assert: (innerCont value: 1) = 3.
	self assert: (outerCont value: 1) = 2.