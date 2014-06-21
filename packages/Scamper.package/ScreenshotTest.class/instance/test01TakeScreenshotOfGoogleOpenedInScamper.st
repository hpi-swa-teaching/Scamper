testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| scamper |
	scamper := (Scamper openOnUrlAsync: 'http://google.de' asUrl) wait.
	scamper owner runStepMethods.
	(Delay forSeconds: 2) wait.
	scamper owner runStepMethods.
	scamper model status = 'done.' ifTrue: [ self saveScreenshotOf: scamper toFile: 'scamper.png' ].
		
	scamper ifNotNilDo: [ :s | s delete ].
	self assert: true