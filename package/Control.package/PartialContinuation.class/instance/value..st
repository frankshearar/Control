evaluating
value: anObject
	"Splice my contents onto the stack, and execute me."
	(self deserialiseFrom: values) swapSender: thisContext sender.
	thisContext swapSender: values first.
	^ anObject.