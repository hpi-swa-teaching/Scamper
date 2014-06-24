size-conversion
isAbsoluteSize: aString
	^aString endsWithAnyOf: {'cm' . 'mm'. 'in' . 'pt' . 'pc' . 'px'}