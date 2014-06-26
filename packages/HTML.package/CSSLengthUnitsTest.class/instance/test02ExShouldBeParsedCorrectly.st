testing
test02ExShouldBeParsedCorrectly
	| size |
	size := '5ex'.
	self deny: (cssformatter isAbsoluteSize: size);
	       assert: (cssformatter isRelativeSize: size);
	       assert: (CSSFontFormatter defaultSize * 5)
			equals: (cssformatter relativeSizeToPx: size
									parentAndDefaultSize: CSSFontFormatter defaultSize);
	       assert: 10
			equals: (cssformatter relativeSizeToPx: size parentAndDefaultSize: 2)