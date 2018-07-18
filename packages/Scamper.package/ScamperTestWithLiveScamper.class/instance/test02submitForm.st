initialize-release
test02submitForm

	| server port scamper button form resultText |
	port := (10000 to: 50000) atRandom.
	server := ScamperMockServer new listenOn: port.
	server addSubmitFormService.
	scamper := Scamper openOnUrl: 'http://localhost:', port, '/submitForm'.
	scamper owner runStepMethods.
	
	button := scamper model webContentsPane allMorphs detect: 
		[:morph | (morph respondsTo: #label) and: [ morph label = ' Absenden ']].
	form := button model. "accessor added by extension to PluggableButtonMorph"
	form submitAsync wait.
	scamper owner runStepMethods.
	
	resultText := (scamper model webContentsPane allMorphs detect: [:morph | morph isTextMorph ]) text.
	self assert: resultText withSqueakLineEndings equals: 'Scamper4ever! aString /aString/' asText.
	server destroy.
	scamper delete.