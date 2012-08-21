*Control
shift: aUnaryBlock
	"Cut contexts off the call stack down to (but not including) the nearest #reset, and reify this partial continuation as a function. Then, pass this function to aUnaryBlock."

	| cc currentCtxt fun resetCtxt |
	currentCtxt := thisContext.
	resetCtxt := DelimitedControlException signal.
	resetCtxt ifNil: [^ MissingResetException signal].
	"resetCtxt is not where we want to cut. Because we use #on:do: to mark the stack, rather than marking the reset's context directly, it's the marked context that we want to leave on the stack. We need to cut to the context whose sender is resetCtxt."
	
	"This search is not safe in the absence of a reset!"
	cc := currentCtxt.
	(cc sender == resetCtxt) ifFalse:
		[[cc sender sender == resetCtxt] whileFalse: [cc := cc sender]].

	"Store the stack from _below_ the shift to just _below_ the reset marker."
	fun := PartialContinuation from: currentCtxt sender downTo: cc sender.

	"Throw away the stack down to just _above_ the reset marker."
	currentCtxt swapSender: cc sender.

	^ aUnaryBlock value: fun.