as yet unclassified
isValid

	| val |
	val := self valueString trimBoth.
	^(#( 'thin' 'medium' 'thick' ) includes: val) or: [(CSSLengthValue fromString: val) isValid]