controlling
dlet: someValues in: aBlock
	"I know which exceptions to handle. See #handle: for details."
	| currentValues |
	variables size = someValues size ifFalse: [
		Error signal: ('Cannot set {1} dynamic variables with {2} values' format: {variables size. someValues size})].
	"A _mutable_ thing over which we can close. We may not store into a method's arguments."
	currentValues := someValues copy.
	^ [aBlock value] on: self do: [:e |
		"If the exception has a value set, something has invoked #dset: and thus wishes to replace my current value in this scope."
		e hasValue ifTrue: [currentValues at: (variables indexOf: e dynVar) put: e value].
		e resume: (currentValues at: (variables indexOf: e dynVar))]