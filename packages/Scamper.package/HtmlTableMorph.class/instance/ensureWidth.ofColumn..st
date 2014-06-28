layout
ensureWidth: aWidth ofColumn: aNumber
	| aColumn |
	aColumn := self layoutPolicy columns at: aNumber.
	(aColumn min < aWidth) ifTrue: [
			aColumn
				min: aWidth;
				breadth: aWidth
			].