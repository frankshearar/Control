testing - unwinds
testRepeatedInvocationsShouldAlwaysRunEnsures
	| cont count |
	"[:x | 1 + ( [ x ] ensure: [ count := count + 1 ] ) ]"
	count := 0.
	[ 2 + ( [ [ :k | cont := k. k value: 0] shift ] ensure: [ count := count + 1 ] ) ] reset.
	self assert: count = 1 description: 'Ensure didn''t run the first time'.
	
	self assert: (cont value: 1) = 3.
	self assert: count = 2 description: 'Ensure didn''t run on 2nd invocation'.
	
	self assert: (cont value: 3) = 5.
	self assert: count = 3 description: 'Ensure didn''t run on 3rd invocation'.