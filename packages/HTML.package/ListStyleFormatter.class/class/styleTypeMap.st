as yet unclassified
styleTypeMap
	^ Dictionary newFrom: {
			'decimal' -> ListStyleDecimalFormatter new.
			'lower-alpha' -> ListStyleLowerAlphaFormatter new.
			'lower-latin' -> ListStyleLowerAlphaFormatter new.
		}