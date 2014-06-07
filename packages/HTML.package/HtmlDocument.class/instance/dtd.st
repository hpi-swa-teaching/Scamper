accessing
dtd

	^dtd isNil 
		ifTrue: [dtd:=HtmlDTD forDocType: self docType] 
		ifFalse: [dtd]