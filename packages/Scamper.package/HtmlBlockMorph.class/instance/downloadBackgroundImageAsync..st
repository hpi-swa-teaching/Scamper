drawing
downloadBackgroundImageAsync: aUrl
	| promise |
	promise := Promise new.
	[ promise resolveWith: aUrl retrieveContents ]
		forkAt: Processor userBackgroundPriority.
	^ promise