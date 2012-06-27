private
replaceDynamicValue: newValue
	"Replace the existing dynamic value with newValue; return oldValue. "
	| block currentCtxt handler oldValue |
	currentCtxt := thisContext.
	handler := currentCtxt findNextHandlerContextStarting.
	block := handler namedTempAt: 2.
	oldValue := handler sender namedTempAt: 1.
	block basicAt: 1 put: newValue.
	^ oldValue.