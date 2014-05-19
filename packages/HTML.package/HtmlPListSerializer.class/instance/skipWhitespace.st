reading
skipWhitespace
	"read a dictionary - assumes leading { has already been read"

	[
		| c |
		c := stream peek.
		(c notNil) and: [c isSeparator]
	] whileTrue: [ stream next].
