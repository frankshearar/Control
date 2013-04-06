A DelimitedDynamicVariableSet is a collection of delimited dynamic variables, permitting more terse setup of a number of variables:

	d, p, q dlet: #(1 2 3) in: [
		d dref + p dref + q dref
	]