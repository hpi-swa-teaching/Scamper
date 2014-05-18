tests - json
testNilTrueFalse
	"Test encodings of nil, true, false"

	self assert: (self decode: 'true') = true.
	self assert: (self decode: 'false') = false.
	self assert: (self decode: 'null') = nil.

	self assert: (self encode: true) = 'true'.
	self assert: (self encode: false) = 'false'.
	self assert: (self encode: nil) = 'null'.

	self should: [self decode: 'nul'] raise: Error.
	self should: [self decode: 'nullll'] raise: Error.
	self should: [self decode: 'tru'] raise: Error.
	self should: [self decode: 'falsef'] raise: Error.
	self should: [self decode: 'truefalse'] raise: Error.
