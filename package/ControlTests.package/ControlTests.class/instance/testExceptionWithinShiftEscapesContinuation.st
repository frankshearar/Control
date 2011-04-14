testing - exceptions
testExceptionWithinShiftEscapesContinuation
	| fun returnValue |
	fun := [ Exception signal: [ :k | k value: '2' ] shift ].
	self
		should: [ fun reset ]
		raise: Exception
		description: 'Reset ate the thrown exception'.
		
	[ fun reset ]
		on: Exception do: [ :e | returnValue := e messageText ].
	self assert: returnValue = '2' description: 'k returned wrong value'.