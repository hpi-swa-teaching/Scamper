testing
test01EmShouldBeParsedCorrectly
	| size |
	size := '2em'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (CSSFontFormatter defaultSize * 2)
			equals: (cssformatter relativeSizeToPx: size
									parentAndDefaultSize: CSSFontFormatter defaultSize);
	       assert: 2
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 1)