testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| scamper |
	[ scamper := (Scamper openOnUrlAsync: 'http://google.de' asUrl) wait.
	scamper owner runStepMethods.

	scamper model status = 'done.' ifTrue: [ self saveScreenshotOf: scamper toFile: 'scamper.png' ] ]
		on: Exception
		do: [].
		
	scamper ifNotNilDo: [ :s | s delete ].
	self assert: true