testing
test08PcShouldBeParsedCorrectly
	| size |
	size := '3pc'.
	self deny: (cssformatter isRelativeSize: size);
	       assert: (cssformatter isAbsoluteSize: size);
	       assert: (3 / 6 * TextStyle pixelsPerInch)
			equals: (cssformatter absoluteSizeToPx: size defaultSize: nil)