printing
printOn: aStream  indent: indent
	aStream
		next: indent put: $ ;
		nextPut: $<;
		print: self tagName.

	self attributes associationsDo: [ :assoc |
		aStream
			space;
			nextPutAll: assoc key;
			nextPutAll: '=';
			nextPutAll: assoc value ].

	aStream
		nextPut: $>;
		cr.
	contents do: [ :entity | entity printOn: aStream indent: indent+1 ].