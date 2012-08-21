evaluating
compose: aUnaryBlock
	^ [:x | self value: (aUnaryBlock value: x)].