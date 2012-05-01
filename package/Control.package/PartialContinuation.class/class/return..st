monad
return: aBlocklikeObject
	^ [[:k | [:x | aBlocklikeObject value: x] ] shift ] reset.