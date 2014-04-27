attributes
doesNotUnderstand: aMessage
	"treat the message as an attribute name"
	| selector |
	selector := aMessage selector.

	selector asLowercase = selector ifFalse: [
		"attribute accesses must be in all lowercase.  This should cut down on some false doesNotUnderstand: traps"
		^super doesNotUnderstand: aMessage ].

	selector numArgs == 0 ifTrue: [
		"return the named attribute"
		^self getAttribute: selector asString default: nil ].


	selector numArgs == 1 ifTrue: [
		"set the named attribute"
		self setAttribute: (selector asString copyFrom: 1 to: (selector size-1)) to: aMessage argument.
		^self ].

	^super doesNotUnderstand: aMessage