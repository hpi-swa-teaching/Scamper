as yet unclassified
isValid

	| s | 
	s := self valueString trimBoth.
	s = 'auto' ifTrue: [^true].
	(CSSLengthValue fromString: s) isValid ifTrue: [^true].
	(CSSPercentageValue fromString: s) isValid ifTrue: [^true].
	^false