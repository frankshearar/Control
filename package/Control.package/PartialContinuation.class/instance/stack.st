accessing
stack
	"A debugging aid. Return a Collection containing my contexts."
	| result stream context |
	result := OrderedCollection new.
	stream := values readStream.

	[stream atEnd] whileFalse:
		[context := stream next.
		1 to: context class instSize do: [ :index | stream next ].
		1 to: context size do: [ :index | stream next ].
		result addLast: context].
	
	^ result.