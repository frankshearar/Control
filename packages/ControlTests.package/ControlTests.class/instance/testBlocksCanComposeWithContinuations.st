testing - composing
testBlocksCanComposeWithContinuations
	| cc |
	[1 + [:k | cc := k.] shift] reset.

	"(1 + 2) * 2 = (* (+ 1 2) 2)"
	self assert: (([:x | x * 2] compose: cc) value: 2) = 6.