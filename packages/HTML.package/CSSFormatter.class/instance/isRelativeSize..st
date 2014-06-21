size-conversion
isRelativeSize: aString
	{'em' . 'ex'. '%'}
		do: [:unit | (aString endsWith: unit) ifTrue: [^true]].
	^false.