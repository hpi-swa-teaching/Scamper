testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| scamper window |
	scamper := Scamper new.
	scamper jumpToUrl: 'http://google.de'.
	window := scamper openAsMorph.
	
	(Delay forMilliseconds: 2000) wait.
	scamper step.
	self assert: scamper status = 'done.'.
	self saveScreenshotOf: window toFile: 'scamper.png'.
	window delete