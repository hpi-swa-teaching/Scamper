accessing
startStyles: aFormatter
	aFormatter startOrderedListWithStart: (self attributes at: 'start' ifAbsent: [1]) asInteger type: (self computedStyles at: #'list-style-type' ifAbsent: ['decimal']).