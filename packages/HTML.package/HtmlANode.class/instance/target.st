accessing
target
	^ self attributes at: 'target' ifAbsent: [nil]