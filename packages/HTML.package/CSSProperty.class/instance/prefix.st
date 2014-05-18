accessing
prefix

	^self isDerived ifTrue: 
	[
		| out |
		out := WriteStream on: String new.
		out nextPutAll: '<<';
			nextPutAll: self propertyName;
			nextPutAll: '>>';
			nextPut: $:;
			nextPut: $ .
		self propertyValue do:[:ea | out nextPut: $ ; nextPutAll: ea valueString].
		out nextPut: $;.
		out contents
	]
	ifFalse:
	[
		super prefix
	]