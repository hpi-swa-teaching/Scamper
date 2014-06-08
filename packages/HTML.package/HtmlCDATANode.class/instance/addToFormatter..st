accessing
addToFormatter: aFormatter

	self parent 
		ifNil: [ aFormatter addString: self innerContents ]
		ifNotNil: [ :parent |
			aFormatter startStyles: self parent.
			aFormatter addString: self innerContents.
			aFormatter endStyles ]