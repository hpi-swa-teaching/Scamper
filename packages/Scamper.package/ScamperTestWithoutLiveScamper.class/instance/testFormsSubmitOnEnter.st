testing
testFormsSubmitOnEnter
	
	| evt form input |
	form := FormInputSetStub new.
	input := PluggableTextMorphSubmitOnEnter on: StringHolder new text: #contents accept: #acceptContents: acceptTarget: form acceptAction: #submitAsync. 
	evt := KeyboardEvent new setType: #keyStroke buttons: 0 position: nil keyValue: 13 hand: nil stamp: nil. "keyStroke enter"
	self assert: (form submittedCount = 0).
	input keyStroke: evt.
	self assert: (form submittedCount = 1)
	
