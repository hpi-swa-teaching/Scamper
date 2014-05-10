testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| window scamper |
	window := Scamper open.
	scamper := window model.
	
	(scamper jumpToUrlAsync: 'http://google.de' asUrl) wait.	
	window owner runStepMethods.
	
	scamper status = 'done.' ifTrue: [ self saveScreenshotOf: window toFile: 'scamper.png' ].
	window delete.
	self assert: true