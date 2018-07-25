initialize-release
test08AddBookmark
	| server port browser |
      
	port := (10000 to: 50000) atRandom.
	server := ScamperMockServer new listenOn: port.
	server addPageWithTitleTest.
	browser := Scamper openOnUrl: 'http://localhost:', port, '/testpage'.
	1 second asDelay wait.
	browser owner runStepMethods.
	browser model addToBookmark.
	self assert: 
		(browser model bookmarks keys contains: [ :bm | bm = 'Test']).
	server destroy.
	browser delete.