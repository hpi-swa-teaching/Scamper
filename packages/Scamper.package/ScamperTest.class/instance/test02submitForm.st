initialize-release
test02submitForm
	| scamper button form resultText |
	scamper := Scamper openOnUrl: 
		'http://swt-scamper.azurewebsites.net/Scamper-Tests/test02submitForm/request.html'.
	scamper owner runStepMethods.
	
	button := scamper model webContentsPane allMorphs detect: 
		[:morph | (morph respondsTo: #label) and: [ morph label = ' Absenden ']].
	form := button model. "accessor added by extension to PluggableButtonMorph"
	form submitAsync wait.
	scamper owner runStepMethods.
	
	resultText := (scamper model webContentsPane allMorphs detect: [:morph | morph isTextMorph ]) text.
	self assert: resultText withSqueakLineEndings equals: '
Scamper4ever!
aString
/aString/
		' asText.
	scamper delete.