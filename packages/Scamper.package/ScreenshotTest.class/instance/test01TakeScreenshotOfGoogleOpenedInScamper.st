testing
test01TakeScreenshotOfGoogleOpenedInScamper
	| scamper |
	
	<timeout:20>
	scamper := (Scamper openOnUrlAsync: 'http://squeak.org' asUrl) wait.
	scamper owner runStepMethods.
	(Delay forSeconds: 5) wait.
	scamper extent: 900@700.
	scamper owner runStepMethods.
	scamper model status = 'done.' ifTrue: 
		[ self saveScreenshotOf: scamper toFile: 'scamper.png' ].
		
	scamper ifNotNilDo: [ :s | s delete ].
	self assert: true