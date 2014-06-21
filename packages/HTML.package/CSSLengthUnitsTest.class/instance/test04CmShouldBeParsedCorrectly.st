testing
test04CmShouldBeParsedCorrectly
	| size |
	size := '1.5cm'.
	self deny: (cssformatter isRelativeSize: size);
	       assert: (cssformatter isAbsoluteSize: size);
	       assert: (1.5 / 2.54 * TextStyle pixelsPerInch)
			equals: (cssformatter absoluteSizeToPx: size defaultSize: nil)