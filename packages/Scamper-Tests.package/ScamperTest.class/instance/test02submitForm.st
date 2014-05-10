initialize-release
test02submitForm
	| scamper website button |
	scamper := (Scamper openOnUrlAsync: 
		'http://swt-scamper.azurewebsites.net/Scamper-Tests/test02submitForm/request.html') wait.
	scamper owner runStepMethods.
	
	website := (((scamper submorphs at: 4) submorphs last) submorphs first).
	button := (website submorphs reject: [:Morph | Morph isTextView]) first.
	button performAction.
	scamper owner runStepMethods.
	10 timesRepeat: 
		[(Delay forMilliseconds: 100) wait. 
		scamper model step].
	self assert: scamper model formattedPage equals: '
Scamper4ever!
aString
/aString/
		' asText.
	scamper delete.