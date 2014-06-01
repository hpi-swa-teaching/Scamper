accessing
startStyles: aFormatter
	aFormatter startOrderedListWithStart:
		(self attributes at: 'start' ifAbsent: [1]) asInteger
		styleType: (self attributes at: 'list-style-type' ifAbsent: ['decimal'])