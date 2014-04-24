parsing
parse: aStream
	^self parseTokens: (HtmlTokenizer on: aStream)
