testing
testDeepShiftPreservesResetMarker
	| ccs |
	ccs := OrderedCollection new.
	[#(1 2) collect: [:each | [:k | ccs add: k.] shift]] reset.
	self assert: (ccs first stack last method selector = #reset).
	ccs first value: 1.

	self assert: ccs size = 2.