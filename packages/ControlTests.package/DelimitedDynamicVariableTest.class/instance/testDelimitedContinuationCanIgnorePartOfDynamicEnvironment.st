testing
testDelimitedContinuationCanIgnorePartOfDynamicEnvironment
	"A shift capturing a change in a dynamic binding."
	| p f v1 v2 v3 v4 |
	p := DelimitedDynamicVariable default: #uninitialized.
	p dlet: 1 in: [
		f := [p dlet: 2 in: [
				[:k | v1 := p dref. k] shift + p dref]] reset.
		v2 := p dref.
		v3 := f value: 100.
		v4 := p dref].
	self assert: #(1 1 102 1) equals: {v1. v2. v3. v4}.