private
serialiseFrom: aContext to: lowerContext
	
	^Array streamContents: [ :stream |
		| context |
		context := aContext.
		[ context == nil or: [ context == lowerContext ] ] whileFalse: [
			stream nextPut: context.
			1 to: context class instSize do: [ :index | stream nextPut: (context instVarAt: index) ].
			1 to: context size do: [ :index | stream nextPut: (context at: index) ].
			context := context sender.].
		context ifNil: [
			MissingResetException signal: lowerContext printString , ' not found while capturing continuation' ] ]