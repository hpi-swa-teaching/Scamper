as yet unclassified
testFormsSubmitOnEnter
	
	| evt form plug |
	form := FormInputSetStub new.
	plug := PluggableTextMorphSubmitOnEnter on: StringHolder new text: #contents accept: #acceptContents: acceptTarget: form acceptAction: #submitAsync.
	evt := KeyboardEvent new setType: #keyStroke buttons:  nil position: nil keyValue: 13  hand: nil stamp: nil.
	plug keyStroke: evt.
	self assert: (form submitted = 1)
	
