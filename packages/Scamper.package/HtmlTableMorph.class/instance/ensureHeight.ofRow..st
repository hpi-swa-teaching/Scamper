layout
ensureHeight: aHeight ofRow: aNumber
	| aRow |
	aRow := self layoutPolicy rows at: aNumber.
	(aRow min < aHeight) ifTrue: [
			aRow
				min: aHeight;
				breadth: aHeight
			].