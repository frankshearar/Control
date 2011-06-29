testing
testShiftPreservesResetMarker
	| cc result |
	[1 + [:k | cc := k. k value: 2] shift] reset.
	self assert: (cc stack last method selector ~= #reset) description: 'Partial continuation cut too far, eating the reset'.
	self assert: (cc stack last method selector ~= #on:do:) description: 'Partial continuation cut too far, eating the marker context'.

	"From Chung-chieh Shan's 'Shift to control': (reset (cons 'a (reset (shift f (shift g '())))))"
	result := [ 'a' , [[:f | [:g| g value: 'b'] shift ] shift] reset ] reset.
	self assert: 'ab' = result.