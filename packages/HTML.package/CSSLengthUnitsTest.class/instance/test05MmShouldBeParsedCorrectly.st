testing
test05MmShouldBeParsedCorrectly
	| size |
	size := '3mm'.
	self deny: (cssformatter isRelativeSize: size);
	       assert: (cssformatter isAbsoluteSize: size);
	       assert: (3 / 25.4 * TextStyle pixelsPerInch)
			equals: (cssformatter absoluteSizeToPx: size defaultSize: nil)