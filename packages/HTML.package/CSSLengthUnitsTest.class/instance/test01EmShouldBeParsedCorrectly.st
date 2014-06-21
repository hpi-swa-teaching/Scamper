testing
test01EmShouldBeParsedCorrectly
	| size |
	size := '2em'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (TextStyle defaultFont pixelSize * 2)
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: nil);
	       assert: 2
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 1)