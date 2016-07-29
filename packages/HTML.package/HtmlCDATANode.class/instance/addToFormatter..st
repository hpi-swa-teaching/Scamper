accessing
addToFormatter: aFormatter
	"doc about styles in cdata tags: http://jendryschik.de/wsdev/einfuehrung/xhtml/kompatibilitaetsrichtlinien "

	self parent 
		ifNil: [ aFormatter addString: self innerContents ]
		ifNotNil: [ :parent |
			aFormatter startStyles: parent.
			aFormatter addString: self innerContents.
			aFormatter endStyles ]