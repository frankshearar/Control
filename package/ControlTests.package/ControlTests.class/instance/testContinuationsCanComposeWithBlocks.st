testing - composing
testContinuationsCanComposeWithBlocks
	| cc |
	[1 + [:k | cc := k.] shift] reset.

	self assert: ((cc compose: [:x | x * 2]) value: 2) = 5.