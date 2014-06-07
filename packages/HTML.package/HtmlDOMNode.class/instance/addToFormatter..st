as yet unclassified
addToFormatter: aFormatter
	self startStyles: aFormatter.
	self children do: [:e | e addToFormatter: aFormatter ].
	self endStyles: aFormatter