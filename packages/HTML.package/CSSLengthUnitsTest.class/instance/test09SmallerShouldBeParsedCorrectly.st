testing
test09SmallerShouldBeParsedCorrectly
	| size |
	size := 'smaller'.
	self assert: (cssformatter isRelativeSize: size);
	       deny: (cssformatter isAbsoluteSize: size);
	       assert: (0.7 * 16)
			equals: (cssformatter relativeSizeToPx: 'smaller' parentAndDefaultSize: 16)