as yet unclassified
testFormsSubmitOnEnter
	
	| evt form plug |
	form := FormInputSetStub new.
	plug := PluggableTextMorphSubmitOnEnter on: StringHolder new text: #contents accept: #acceptContents: acceptTarget: form acceptAction: #submitAsync.
	evt := KeyboardEvent new 
		keyValue: 13. "enter"
	plug keyStroke: evt.
	self assert: (form submitted = 1)
	
