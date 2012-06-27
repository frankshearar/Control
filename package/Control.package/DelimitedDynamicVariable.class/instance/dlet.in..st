controlling
dlet: anObject in: aBlock
	"I know which exceptions to handle. See #handle: for details."
	^ [aBlock value] on: self do: [:e | e resume: anObject]