testing
testShiftPreservesResetMarker
	| cc result |
	[1 + [:k | cc := k. k value: 2] shift] reset.
	self assert: (cc stack noneSatisfy: [:frame | frame method selector == #reset]).
	
	"From Chung-chieh Shan's 'Shift to control': (reset (cons 'a (reset (shift f (shift g '())))))"
	result := [ 'a' , [[:f | [:g| g value: 'b'] shift ] shift] reset ] reset.
	self assert: 'ab' = result.