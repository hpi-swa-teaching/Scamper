accessing
alt
	(self type = 'image')
		ifTrue: [^self attributes at: 'alt' ifAbsent: ['[image]']]
		ifFalse: [^self attributes at: 'alt' ifAbsent: ['']]