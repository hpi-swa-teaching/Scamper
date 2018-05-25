rendering
addToFormatter: formatter
	| form |
	form := self associatedForm.
	form ifNil: [
		"not in a form.  It's bogus HTML but try to survive"
		^self ].

	"is it a submit button?"
	self type = 'submit' ifTrue: [
		formatter addMorph: ((PluggableButtonMorph on: form getState: nil action: #submitAsync) label: (self attributes at: 'value' ifAbsent: ['Submit'])).
		^self ].

	self type = 'image'
		ifTrue: [^self addImageButtonToFormatter: formatter].

	(self type = 'text' or: [self type = 'password'] or: [self type = 'search'])
		ifTrue: [^self addTextInputToFormatter: formatter].

	self type = 'hidden' ifTrue: [
		form addInput: (HiddenInput name: self name  value: self defaultValue).
		^self ].

	self type = 'radio' ifTrue: [ 
		^self addRadioButtonToFormatter: formatter ].

	self type = 'checkbox' ifTrue: [ 
		^self addCheckBoxButtonToFormatter: formatter ].

	self type = 'file' ifTrue: [ 
		^self addFileInputToFormatter: formatter ].

	formatter addString: '[form input of type: ', self type, ']'.