*Control
shift: aUnaryBlock
	"Turn the call stack down to the nearest #reset, and reify this partial continuation as a function. Then, pass this function to aUnaryBlock."

	| currentCtxt fun resetCtxt |
	currentCtxt := thisContext.
	resetCtxt := DelimitedControlException signal.
	resetCtxt ifNil: [^ MissingResetException signal].
	
	"Store the stack from _below_ the shift to just _above_ the reset."
	fun := PartialContinuation from: currentCtxt sender downTo: resetCtxt sender.

	"Throw away the stack down to the context that called the reset."
	currentCtxt swapSender: resetCtxt sender.

	^ aUnaryBlock value: fun.