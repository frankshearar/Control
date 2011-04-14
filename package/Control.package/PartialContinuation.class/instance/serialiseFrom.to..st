private
serialiseFrom: aContext to: lowerContext
	| c stream |
	stream := WriteStream on: (OrderedCollection new: 100).
"	Transcript showln: '8<-----'."
	c := aContext.
	[c isNil or: [c == lowerContext]] whileFalse:
		["Transcript showln: c printString."
		stream nextPut: c.
		1 to: c class instSize do: [ :index | stream nextPut: (c instVarAt: index) ].
		1 to: c size do: [ :index | stream nextPut: (c at: index) ].
		c := c sender.].
	c ifNil: [MissingResetException signal: lowerContext printString , ' not found while capturing continuation'].
	
	^ stream contents.