testing - unwinds
testShiftWithInnerEnsure
	| flag |
	flag := false.
	[ 2 + [ :k | [ 0 ] ensure: [ flag := true ] ] shift ] reset.
	self assert: flag description: 'Ensure block didn''t run'.