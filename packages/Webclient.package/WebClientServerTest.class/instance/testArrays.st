tests - json
testArrays
	"Test array encodings"

	self assert: (self decode: '[]') = #().
	self assert: (self decode: '[[]]') = #(#()).
	self assert: (self decode: '[[], []]') = #(#() #()).
	self assert: (self decode: '["hello", "world", 123]') = #('hello' 'world' 123).
	self assert: (self decode: '[["true", false, null]]') = #(('true' false nil)).

	self assert: (self encode: #()) =  '[]'.
	self assert: (self encode: #(#())) = '[[]]'.
	self assert: (self encode: #(#() #()) ) = '[[], []]'.
	self assert: (self encode: #('hello' 'world' 123)) = '["hello", "world", 123]'.
	self assert: (self encode: #(('true' false nil))) = '[["true", false, null]]'.

	self should: [self decode: '['] raise: Error.
	self should: [self decode: '[}'] raise: Error.
	self should: [self decode: '{[}'] raise: Error.
	self should: [self decode: '[[[]]'] raise: Error.
