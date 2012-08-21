monad
>>= aContinuation
	"Add aContinuation to the continuation chain."
	^ aContinuation compose: self.