testing - controlling
testDletCanNest
	| d p |
	d := DelimitedDynamicVariable default: 0.
	p := DelimitedDynamicVariable default: 0.
	d, p dlet: #(1 2) in: [
		d, p dlet: #(3 4) in: [
		self assert: 3 equals: d dref.
		self assert: 4 equals: p dref]]