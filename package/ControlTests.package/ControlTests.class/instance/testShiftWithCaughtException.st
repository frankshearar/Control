testing - exceptions
testShiftWithCaughtException
	| fun |
	fun := [1 + [:k | k value: ([ 2 / 0 ] on: ZeroDivide do: [ 1 ]) ] shift ].
	self shouldnt: [fun reset] raise: ZeroDivide.