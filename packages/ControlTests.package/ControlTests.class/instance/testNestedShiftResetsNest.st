testing
testNestedShiftResetsNest
	| innerCont outerCont |
	[1 + [ :k |
		outerCont := k. "stack reified as [ :x | 1 + x ]"
		k value: [ 2 + [ :kk |
				innerCont := kk. "stack reified as [ :x | 2 + x ]"
				kk value: 0 ] shift ] reset ] shift ] reset.

	self assert: 3 equals: (innerCont value: 1).
	self assert: 2 equals: (outerCont value: 1).
	self assert: 5 equals: ((outerCont compose: [:x | x * 2]) value: 2)