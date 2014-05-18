tests - json
testStrings
	"Test string encodings"

	self assert: (self decode: '"Hello World"') = 'Hello World'.
	self assert: (self decode: '"\"Hello World\""') = '"Hello World"'.
	self assert: (self decode: '"foo\\bar\/baz"') = 'foo\bar/baz'.
	self assert: (self decode: '""') = ''.
	self assert: (self decode: '"foo \u0026 bar"') = 'foo & bar'.
	self assert: (self decode: '"\r\n"') = String crlf.
	self assert: (self decode: '"\u041F\u0440\u0430\u0432\u0434\u0430"')
		equals: #[208 159 209 128 208 176 208 178 208 180 208 176] asString utf8ToSqueak.

	self assert: (self encode: 'Hello World') = '"Hello World"'.
	self assert: (self encode: '"Hello World"') = '"\"Hello World\""'.
	self assert: (self encode: 'foo\bar/baz') = '"foo\\bar\/baz"'.
	self assert: (self encode: '') = '""'.
	self assert: (self encode: 'foo ', (Character value: 257),' bar') = '"foo \u0101 bar"'.
	self assert: (self encode: String crlf) = '"\r\n"'.

	self assert: (self encode: #[208 159 209 128 208 176 208 178 208 180 208 176] asString utf8ToSqueak)
		equals: '"\u041F\u0440\u0430\u0432\u0434\u0430"'.

	self should: [self decode: '"hello'] raise: Error.
	self should: [self decode: '"\'] raise: Error.
	self should: [self decode: '"\"'] raise: Error.