initialize-release
test11DisplayHistory


	| doc |
	doc   := MIMEDocument contentType: 'text/html' content: 'test' url:'test.de'.
	scamper model recentDocuments add: doc.
	scamper model displayHistory.
	scamper model menuHistory delete.

	self assert: ((scamper model menuHistory submorphs select: [:s |
		s isKindOf: MenuItemMorph ]) anySatisfy: [:m |^ m contents = doc url]).
	self assert: ((scamper model menuHistory submorphs select: [:s |
		s isKindOf: MenuItemMorph ]) noneSatisfy:  [:m |^ m contents ~ doc url]).

	