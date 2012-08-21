monad
return: aBlocklikeObject
	^ [[:k | k value: [:x | aBlocklikeObject value: x] ] shift ] reset.