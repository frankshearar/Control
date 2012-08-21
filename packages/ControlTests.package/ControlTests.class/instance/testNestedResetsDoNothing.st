testing
testNestedResetsDoNothing
	| fun |
	fun := [ [ 2 ] reset ].
	self assert: fun value = fun reset.
	self assert: fun reset = 2.