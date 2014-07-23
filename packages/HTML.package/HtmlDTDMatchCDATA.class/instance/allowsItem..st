matching
allowsItem: aTag

	^(aTag asUppercase findString: 'CDATA') > 0