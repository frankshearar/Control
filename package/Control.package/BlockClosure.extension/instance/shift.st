*Control
shift
	"I am a unary block. Take the call stack to the nearest reset, reifying that partial continuation as a function F. Then evaluate myself with F as an argument.
	Note that this is a convenience method for BlockClosure>>shift:. See that method's comments for details."
	^ self shift: self.
