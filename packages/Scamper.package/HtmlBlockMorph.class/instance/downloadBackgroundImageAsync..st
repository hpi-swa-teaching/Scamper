drawing
downloadBackgroundImageAsync: aUrl
	| promise |
	promise := Promise new.
	[ promise resolveWith: aUrl asUrl retrieveContents ]
		forkAt: Processor userBackgroundPriority.
	^ promise