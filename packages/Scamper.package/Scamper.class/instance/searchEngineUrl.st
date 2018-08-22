accessing
searchEngineUrl
	^ searchEngineUrl ifNil: [searchEngineUrl :=  'http://google.com/search']