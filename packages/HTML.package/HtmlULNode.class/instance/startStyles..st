accessing
startStyles: aFormatter
	aFormatter startUnorderedListWithType: (self computedStyles at: #'list-style-type' ifAbsent: ['disc']).