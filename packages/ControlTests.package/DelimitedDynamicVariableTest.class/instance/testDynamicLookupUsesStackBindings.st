testing
testDynamicLookupUsesStackBindings
	"Shift cuts out that part of the stack that sets ControlTestDynVar to 3. Thus, within the shift, ControlTestDynVar should have the outer value, 2. We use these values because they are distinct from ControlTestDynVar's default value of 1."
	| p outer inner |
	p := DelimitedDynamicVariable default: #uninitialized.
	outer := 2.
	inner := 3.
	self
		assert: outer
		equals:
			(p dlet: outer in: [
				[p dlet: inner in: [
					[:k| p dref ] shift ]] reset])