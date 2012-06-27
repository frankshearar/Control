testing - exceptions
testOnDoActsLikeDynamicVariable
	"The shift cuts out the setting to 2."
	[[[[:k |
		self assert: 1 equals: (DelimDynVarTestNotification signal ifNil: [3]).
		k value: 1] shift	]
			on: DelimDynVarTestNotification do: [:e | e resume: 2]] reset]
				on: DelimDynVarTestNotification do: [:e | e resume: 1]