testing
test03PercentageShouldBeParsedCorrectly
	| size |
	size := '120%'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (TextStyle defaultFont pixelSize * 1.2)
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: nil);
	       assert: 1.2
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 1) asFloat