document handling
titleOf: aHtmlDocument
	| titleNodes |
	titleNodes := aHtmlDocument nodesSelect: [:node | node tag = 'title'].
	titleNodes isEmpty
		ifTrue: [^nil]
		ifFalse: [^titleNodes first innerContents]