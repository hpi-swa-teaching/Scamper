size-conversion
isRelativeSize: aString
	^aString endsWithAnyOf: {'em' . 'ex'. '%' . 'larger' . 'smaller'}