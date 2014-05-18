instance creation
fromString: aString

	| in | 

	in := ReadStream on: aString.

	^self readFrom: in.
	