monad
return: anObject
	^ [[:k | [:x | anObject] ] shift ] reset.