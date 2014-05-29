accessing
startStyles: aFormatter
	aFormatter startOrderedListWithStart: (self attributes at: 'start' ifAbsent: [1]) asInteger.