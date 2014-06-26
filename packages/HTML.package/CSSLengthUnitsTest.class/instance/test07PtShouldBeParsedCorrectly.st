testing
test07PtShouldBeParsedCorrectly
	| size |
	size := '12pt'.
	self deny: (cssformatter isRelativeSize: size);
	       assert: (cssformatter isAbsoluteSize: size);
	       assert: (12 / 72 * TextStyle pixelsPerInch)
			equals: (cssformatter absoluteSizeToPx: size defaultSize: nil)