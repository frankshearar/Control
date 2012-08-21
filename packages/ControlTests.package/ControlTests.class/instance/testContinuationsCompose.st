testing
testContinuationsCompose
	| add1 add2 toString |
	[ 1 + [ :k |
			add1 := k.
			k value: 0 ] shift ] reset.

	[ 2 + [ :k |
		add2 := k.
		k value: 0 ] shift ] reset.

	self assert: (add1 value: (add2 value: 0)) = 3.
	
	"shift -> [ :x | x printString ]"
	[ [ :k | toString := k. k value: 0 ] shift printString ] reset.

	self assert: (toString value: (add1 value: 0)) = '1'.