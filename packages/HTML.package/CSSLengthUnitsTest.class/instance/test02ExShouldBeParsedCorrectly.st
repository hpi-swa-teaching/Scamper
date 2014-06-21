testing
test02ExShouldBeParsedCorrectly
	| size |
	size := '5ex'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (TextStyle defaultFont pixelSize * 5)
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: nil);
	       assert: 10
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 2)