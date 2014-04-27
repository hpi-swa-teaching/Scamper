stream protocol
atEnd
	"are there any more tokens?  This is equivalent to whether there is any more input"
	^(pos > text size)