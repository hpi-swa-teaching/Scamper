initialize-release
test02submitForm
	| scamper website button |
	scamper := Scamper openOnUrl: 'http://swt-scamper.azurewebsites.net/Scamper-Tests/test02submitForm/request.html'.
	(Delay forMilliseconds: 500) wait.
	scamper model step.
	website := (((scamper submorphs at: 4) submorphs last) submorphs first).
	button := (website submorphs reject: [:Morph | Morph isTextView]) first.
	button performAction.
	scamper model step.
	10 timesRepeat: 
		[(Delay forMilliseconds: 100) wait. 
		scamper model step].
	self assert: scamper model formattedPage asString substrings equals: #('Scamper4ever!' 'aString' '/aString/').
	scamper delete.