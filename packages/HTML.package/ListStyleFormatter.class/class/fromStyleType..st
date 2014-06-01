as yet unclassified
fromStyleType: aStyleType
	^ self styleTypeMap at: aStyleType ifAbsent: [ListStyleDecimalFormatter new]