testing - unwinds
testShiftWithOuterEnsure
	| cont flag |

	[ [ 2 + [ :k |
			cont := k.
			k value: 0 ] shift ] reset ] ensure: [ flag := true ].
	self assert: flag description: 'Ensure block didn''t run'.
	
	flag := false.
	cont value: 0.
	self deny: flag description: 'Ensure block ran again!'.