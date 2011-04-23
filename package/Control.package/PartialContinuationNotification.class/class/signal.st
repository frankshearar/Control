exceptionInstantiator
signal

	^self new
		topContext: thisContext sender;
		signal