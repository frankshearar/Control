testing - composing
testBlocksCanComposeWithSelectors
	"(1 + (2 squared))"
	self assert: (([:x | 1 + x] compose: #squared) value: 2) = 5.