initialize-release
test11DisplayHistory


	| mock |
	mock   := MIMEDocument contentType: 'text/html' content: 'test' url:'test.de'.
	scamper model recentDocuments add: mock.
	scamper model displayHistory.
	scamper model menuHistory delete.
	self assert: (scamper model menuHistory submorphs anySatisfy: [:submorph | 
		(submorph isKindOf: MenuItemMorph) ifTrue: [^ submorph contents = mock url].
		^ False]).
	self assert: (scamper model menuHistory submorphs noneSatisfy: [:submorph | 
		(submorph isKindOf: MenuItemMorph) ifTrue: [^ submorph contents = 'test2.de'].
		^ True]).