formatting
addToFormatter: formatter
	formatter currentFormData ifNil: [
		"not in a form.  It's bogus HTML but try to survive"
		^self ].

	"is it a submit button?"
	self type = 'submit' ifTrue: [
		formatter addMorph: ((PluggableButtonMorph on: formatter currentFormData getState: nil action: #submit) label: (self getAttribute: 'value' default: 'Submit')).
		^self ].

	self type = 'image'
		ifTrue: [^self addImageButtonToFormatter: formatter].

	(self type = 'text' or: [self type = 'password'])
		ifTrue: [^self addTextInputToFormatter: formatter].

	self type = 'hidden' ifTrue: [
		formatter currentFormData addInput: (HiddenInput name: self name  value: self defaultValue).
		^self ].

	self type = 'radio' ifTrue: [ 
		^self addRadioButtonToFormatter: formatter ].

	self type = 'checkbox' ifTrue: [ 
		^self addCheckBoxButtonToFormatter: formatter ].

	self type = 'file' ifTrue: [ 
		^self addFileInputToFormatter: formatter ].

	formatter addString: '[form input of type: ', self type, ']'.