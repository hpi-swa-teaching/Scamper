tests - json
testDictionaries
	"Test dictionary encodings"

	self assert: (self decode: '{}') = (Dictionary new).

	self assert: (self decode: '{"foo" : "bar"}')
		equals: (Dictionary newFromPairs: {
			'foo'. 'bar'
		}).

	self assert: (self decode: '{"stuff" : [[], 42, "hello"]}')
		equals: (Dictionary newFromPairs: {
			'stuff'. #(() 42 'hello')
		}).

	self assert: (self decode: '{"x" : 42, "y": "77", "z": 0.1}')
		equals: (Dictionary newFromPairs: {
			'x'. 42.
			'y'. '77'.
			'z'. 0.1
		}).


	self assert: (self encode: Dictionary new) = '{}'.

	self assert: (self encode: (Dictionary newFromPairs: {
			'foo'. 'bar'
		})) equals: '{"foo": "bar"}'.

	self assert: (self encode: (Dictionary newFromPairs: {
			'stuff'. #(() 42 'hello')
		})) equals: '{"stuff": [[], 42, "hello"]}'.

	self assert: (self encode: (Dictionary newFromPairs: {
			'x'. 42.
			'y'. '77'.
			'z'. 0.1
		})) equals: '{"x": 42, "y": "77", "z": 0.1}'.

	self should: [self decode: '{'] raise: Error.
	self should: [self decode: '{]'] raise: Error.
	self should: [self decode: '[{]'] raise: Error.
	self should: [self decode: '{"a"}'] raise: Error.
	self should: [self decode: '{42: "hello"}'] raise: Error.
	self should: [self decode: '{"a" : 42,}'] raise: Error.
	self should: [self decode: '{"a" : 42 "b": 33}'] raise: Error.

	self should: [self encode: (Dictionary newFromPairs: {1. 1})] raise: Error.