testing
testResetDoesNothingOnItsOwn
	| fun |
	fun := [1 + 2].
	self assert: fun value = fun reset.