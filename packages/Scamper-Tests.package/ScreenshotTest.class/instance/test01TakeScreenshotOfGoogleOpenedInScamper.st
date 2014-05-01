testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| scamper window |
	scamper := Scamper new.
	window := nil.
	(BlockDependent newOn: scamper 
					   forEvent: #status 
					   do:  [ ( scamper status = 'done.' and: [ window notNil ] ) ifTrue: 
							 [ self saveScreenshotOf: window toFile: 'scamper.png'.
							   window delete ] ] )
					   subscribeOnUIThread.
					
	scamper jumpToUrl: 'http://google.de'.
	window := scamper openAsMorph.
					
	self assert: true