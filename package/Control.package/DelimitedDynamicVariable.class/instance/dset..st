controlling
dset: anObject
	^ (DelimitedDynamicVariableRef dynVar: self value: anObject) signal
		ifNil: [ | oldValue |
			oldValue := default.
			default := anObject. oldValue ].