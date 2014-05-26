initialize-release
test02submitForm
	| scamper website button form |
	scamper := (Scamper openOnUrlAsync: 
		'http://swt-scamper.azurewebsites.net/Scamper-Tests/test02submitForm/request.html') wait.
	scamper owner runStepMethods.
	
	website := (((scamper submorphs at: 4) submorphs last) submorphs first).
	button := (website submorphs reject: [:Morph | Morph isTextView]) first.
	form := button model. "accessor added by extension to PluggableButtonMorph"
	form submitAsync wait.
	scamper owner runStepMethods.
	
	self assert: scamper model formattedPage asString substrings equals: #('Scamper4ever!' 'aString' '/aString/').
	scamper delete.