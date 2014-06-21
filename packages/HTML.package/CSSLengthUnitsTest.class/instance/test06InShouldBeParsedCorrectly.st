testing
test06InShouldBeParsedCorrectly
	| size |
	size := '0.3in'.
	self deny: (cssformatter isRelativeSize: size);
	       assert: (cssformatter isAbsoluteSize: size);
	       assert: (0.3 * TextStyle pixelsPerInch)
			equals: (cssformatter absoluteSizeToPx: size defaultSize: nil)