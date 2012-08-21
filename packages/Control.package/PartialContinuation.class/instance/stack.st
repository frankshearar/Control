accessing
stack
	"A debugging aid. Return a Collection containing my contexts."

	| result currentContext |
	result := OrderedCollection new.
	currentContext := context.
	[ currentContext isNil ] whileFalse: [
		result addLast: currentContext.
		currentContext := currentContext sender ].
	^result