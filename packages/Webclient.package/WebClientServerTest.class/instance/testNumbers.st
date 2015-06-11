tests - json
testNumbers
	"Test the encodings of numbers"

	self assert: (self decode: '42') = 42.
	self assert: (self decode: '-0123') = -123.
	self assert: (self decode: '42.3') = 42.3.
	self assert: (self decode: '-42.3e44') = -42.3e44.
	self assert: (self decode: '-0.0e0') = 0.0.

	self assert: (self encode: 42) = '42'.
	self assert: (self encode: -123) = '-123'.
	self assert: (self encode: 42.3) = '42.3'.
	self assert: (self encode: -42.3e44) = '-4.23e45'.
	self assert: (self encode: -0.0e0) = '-0.0'.

	self should: [self decode: '0x123'] raise: Error.
	self should: [self decode: '-.e'] raise: Error.
