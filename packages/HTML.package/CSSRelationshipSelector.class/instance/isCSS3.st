accessing
isCSS3

	^(self selectors detect:[:ea | ea isCSS3] ifNone: [nil]) notNil