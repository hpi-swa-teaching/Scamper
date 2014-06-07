accessing
addToFormatter: aFormatter

	self parent 
		ifNil: [ aFormatter addString: self innerContents ]
		ifNotNil: [ :parent |
			aFormatter startStyles: self parent.
			self startStyles: aFormatter.
			aFormatter addString: self innerContents.
			self endStyles: aFormatter.
			aFormatter endStyles ]