formatting
formattedText
	"return a version of this document as a formatted Text"
	| formatter |
	formatter := HtmlFormatter preferredFormatterClass new.
	self addToFormatter: formatter.
	^formatter text 