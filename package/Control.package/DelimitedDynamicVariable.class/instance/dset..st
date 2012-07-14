controlling
dset: anObject
	^ (DelimitedDynamicVariableRef dynVar: self newValue: anObject) signal
		ifNil: [ | oldValue |
			oldValue := default.
			default := anObject. oldValue ].