Signal me when you want to create a partial continuation. I'm an alternative to the shift/reset methods.
Example code:

c := [ [ 1 + PartialContinuationNotification signal ] value ]
	on: PartialContinuationNotification
	do: [ :notification | notification continuation ].
c value: 5