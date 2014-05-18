accessing
isSelfContained

	^self hasTrailingSlash or: [self dtd tagIsEmpty: self dtdTag]