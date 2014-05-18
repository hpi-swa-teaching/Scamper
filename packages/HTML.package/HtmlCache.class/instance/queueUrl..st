accessing
queueUrl: anUrl

	| absoluteUrl |
	absoluteUrl := self canonicalize: anUrl.
	^urlToDocument at: absoluteUrl ifAbsentPut: 
	[
		"| request loader |
		loader := HTTPLoader default.
		request := HTTPLoader httpRequestClass for: absoluteUrl in: loader.
		loader addRequest: request.
		request"
		[absoluteUrl asUrl retrieveContents]
		on: Error
		do: ['']
	]	