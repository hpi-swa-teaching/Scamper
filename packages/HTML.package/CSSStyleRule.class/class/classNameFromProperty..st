definitions
classNameFromProperty: aString

	| in s nm |
	
	in := ReadStream on: aString.
	nm := ''.

	[in atEnd] whileFalse:
	[
		s := in upTo: $-.
		s := ((s first: 1) asUppercase),(s last: (s size -1)).
		nm := nm,s. 
	].

	^'CSS',nm,'Property'
	