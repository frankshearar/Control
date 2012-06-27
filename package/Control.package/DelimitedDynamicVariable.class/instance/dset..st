controlling
dset: anObject
	^ (DelimitedDynamicVariableRef dynVar: self) signal
		ifNil: [ | oldValue |
			oldValue := default. default := anObject. oldValue ]
		ifNotNil: [ self replaceDynamicValue: anObject ]