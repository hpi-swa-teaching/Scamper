updating
update: aSymbol

	super update: aSymbol.
	aSymbol == getBgSelector ifTrue:
		[ (self isImage: self getBg) ifTrue:[image := self drawImage: self getBg]
								ifFalse:[ image := nil.
										self color: self getBg]]