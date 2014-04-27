printing
printHtmlOn: aStream indent: indent 
	aStream next: indent put: $ ;
	 nextPutAll: '<';
	 nextPutAll: self tagName.
	self attributes associationsDo: [:assoc | aStream space; nextPutAll: assoc key; nextPutAll: '="'; nextPutAll: assoc value; nextPutAll: '"'].
	aStream nextPut: $>;
	 cr.
	contents do: [:entity | entity printHtmlOn: aStream indent: indent + 1].
	aStream nextPutAll: '</'; nextPutAll: self tagName; nextPutAll: '>'.