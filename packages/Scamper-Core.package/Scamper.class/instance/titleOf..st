document handling
titleOf: aHtmlDocument
	^ (aHtmlDocument nodesSelect: [:node | node tag = 'title']) first innerContents