testing - exceptions
testResetDoesntEatExceptions
	self
		should: [ [ Exception signal ] reset ]
		raise: Exception
		description: 'Reset ate the thrown exception'.