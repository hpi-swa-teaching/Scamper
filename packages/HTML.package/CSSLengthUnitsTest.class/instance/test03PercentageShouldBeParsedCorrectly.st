testing
test03PercentageShouldBeParsedCorrectly
	| size |
	size := '120%'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (CSSFontFormatter defaultSize * 1.2)
			equals: (cssformatter relativeSizeToPx: size
									parentAndDefaultSize: CSSFontFormatter defaultSize);
	       assert: 1.2
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 1) asFloat