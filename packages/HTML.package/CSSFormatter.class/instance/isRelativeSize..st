size-conversion
isRelativeSize: aString
	^aString endsWithAnyOf: {'em' . 'ex'. '%'}