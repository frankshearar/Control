testing - exceptions
testOnDoActsLikeDynamicVariableWhenShiftCapturesNoChanges
	[[[[:k |
		self assert: 2 equals: (DelimDynVarTestNotification signal ifNil: [3]).
		k value: 1] shift	] reset]
			on: DelimDynVarTestNotification do: [:e | e resume: 2]]
				on: DelimDynVarTestNotification do: [:e | e resume: 1]