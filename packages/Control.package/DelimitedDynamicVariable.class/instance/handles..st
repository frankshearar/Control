error handling
handles: anException
	"In order for us to have one kind of exception for dereferencing a dynamic variable, we need to 'parameterise' the handler. I will only handle the given exception if that exception has been associated with me."
	^ (anException isKindOf: DelimitedDynamicVariableRef)
		and: [anException dynVar == self]