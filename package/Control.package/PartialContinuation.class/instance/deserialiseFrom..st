private
deserialiseFrom: anObject
	| stream context |
	stream := anObject readStream.
	"We don't need to explicitly connect the contexts, because one of the instvars is sender."
	[stream atEnd] whileFalse:
		[context := stream next.
		1 to: context class instSize do: [ :index | context instVarAt: index put: (stream next) ].
		1 to: context size do: [ :index | context at: index put: (stream next) ] ].
	^ context