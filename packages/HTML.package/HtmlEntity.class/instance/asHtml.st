converting
asHtml
	| aStream |
	aStream := WriteStream on: ''.
	self printHtmlOn: aStream.
	^aStream contents.