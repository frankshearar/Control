private
deserialiseFrom: anObject

	| stream currentContext bottomContext |
	stream := anObject readStream.
	"We don't need to explicitly connect the contexts, because one of the instvars is sender."
	[ (currentContext := stream next) == nil ] whileFalse: [
		bottomContext := currentContext.
		1 to: currentContext class instSize do: [ :index | currentContext instVarAt: index put: stream next ].
		1 to: currentContext size do: [ :index | currentContext at: index put: stream next ] ].
	^bottomContext