printing
asPList

	| dict |
	dict := Dictionary new.

	#('appliesTo' 'propertyName' 'initialValue' 'media' 'percentages' 'valueString')
	do:[:ea | dict at: ea put: (self perform: (ea asSymbol))].

	^dict