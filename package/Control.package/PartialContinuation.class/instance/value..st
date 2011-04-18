evaluating
value: anObject
	"Deserialise the continuation, returning the first/bottom-most context. Stitch the continuation onto the current call stack by telling this bottom context that thisContext's sender called it. 'thisContext sender' because thisContext refers to the context of the #value: call."
	(self deserialiseFrom: values) swapSender: thisContext sender.
	
	"Then, tell thisContext that its sender was actually the last/top-most context."
	thisContext swapSender: values first.
	
	"Finally, 'return' anObject from the caller context... which thanks to the line
	above, is actually values first. This effectively sets anObject as the parameter
	to the reified partial continuation, because instead of 'returning' to our caller
	we 'return' to the next part of the computation - our
	partial-continuation-as-function."

	^ anObject.