testing - composing
testContinuationsCanComposeWithSelectors
	| cc |
	[1 + [:k | cc := k.] shift] reset.

	"(1 + (2 squared))"
	self assert: ((cc compose: #squared) value: 2) = 5.