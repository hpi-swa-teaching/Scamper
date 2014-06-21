size-conversion
isAbsoluteSize: aString
	{'cm' . 'mm'. 'in' . 'pt' . 'pc' . 'px'}
		do: [:unit | (aString endsWith: unit) ifTrue: [^true]].
	^false.