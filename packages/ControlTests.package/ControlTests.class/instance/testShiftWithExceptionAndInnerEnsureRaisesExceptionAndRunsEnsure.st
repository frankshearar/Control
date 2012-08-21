testing - unwinds
testShiftWithExceptionAndInnerEnsureRaisesExceptionAndRunsEnsure
	| flag fun |
	flag := false.
	fun := [ 2 + [ :k | [ 1 / 0 ] ensure: [ flag := true ] ] shift ].
	self should: [ fun reset ] raise: ZeroDivide.
	self assert: flag description: 'Ensure block didn''t run'.