initialize-release
test02submitForm

"This test is empty because we shut down the server. The files are available in our wiki: https://github.com/SWTI2014/SWTI2014-Project-02/wiki/Resources-for-integration-tests-and-build-screenshots"

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