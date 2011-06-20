debugging
debugString
	| delim s |
	delim := Character cr asString, '=======', Character cr.
	s := self stack.
	^ s allButFirst inject: (s first method decompileString), delim into: [:acc :each | acc, each method decompileString, delim].