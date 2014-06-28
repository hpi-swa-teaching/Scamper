testing
test10LargerShouldBeParsedCorrectly
	| size |
	size := 'larger'.
	self assert: (cssformatter isRelativeSize: size);
	       deny: (cssformatter isAbsoluteSize: size);
	       assert: (1.3 * 16)
			equals: (cssformatter relativeSizeToPx: 'larger' parentAndDefaultSize: 16)