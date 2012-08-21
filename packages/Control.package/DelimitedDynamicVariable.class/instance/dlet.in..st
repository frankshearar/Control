controlling
dlet: anObject in: aBlock
	"I know which exceptions to handle. See #handle: for details."
	| currentValue |
	"A _mutable_ thing over which we can close. We may not store into a method's arguments."
	currentValue := anObject.
	^ [aBlock value] on: self do: [:e |
		"If the exception has a value set, something has invoked #dset: and thus wishes to replace my current value in this scope."
		e hasValue ifTrue: [currentValue := e value].
		e resume: currentValue]