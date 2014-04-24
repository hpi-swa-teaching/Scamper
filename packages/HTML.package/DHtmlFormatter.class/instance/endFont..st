formatting commands
endFont: aFont
	fontSpecs isEmptyOrNil
		ifFalse: [fontSpecs removeLast].
	self setAttributes