as yet unclassified
addToFormatter: aFormatter
	aFormatter startStyles: self styles.
	self startStyles: aFormatter.
	self children do: [:e | e addToFormatter: aFormatter ].
	self endStyles: aFormatter.
	aFormatter endStyles