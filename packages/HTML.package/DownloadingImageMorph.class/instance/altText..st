as yet unclassified
altText: aString
	"set the text to be displayed while downloading"
	altText := aString.
	aString ifNotNil: [self setBalloonText: aString].
	self setContents