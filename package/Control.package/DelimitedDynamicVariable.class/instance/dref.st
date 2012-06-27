accessing
dref
	^ (DelimitedDynamicVariableRef dynVar: self) signal ifNil: [default]