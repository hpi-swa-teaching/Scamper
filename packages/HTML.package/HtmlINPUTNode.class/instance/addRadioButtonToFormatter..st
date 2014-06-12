as yet unclassified
addRadioButtonToFormatter: formatter
	| name formData checked buttonSet button buttonInput |

	"dig up relevant attributes"
	name := self attributes at: 'name' ifAbsent: [nil].
	name ifNil: [ ^self ].
	value := self attributes at: 'value' ifAbsent: [nil].
	value ifNil: [ ^value ].
	
	formData := self associatedForm.
	formData ifNil:  [ ^self ].

	checked := self attributes at: 'checked' ifAbsent: [nil].


	"find or create the set of buttons with our same name"
	buttonSet := formData inputs detect: [ :i | i isRadioButtonSetInput and: [ i name = name ] ] ifNone: [ nil ].
	buttonSet ifNil: [ 
		"create a new button set"
		buttonSet := RadioButtonSetInput name: name.
		formData addInput: buttonSet. ].

	"set up the form input"
	buttonInput := RadioButtonInput  inputSet: buttonSet value: value.
	buttonSet addInput: buttonInput.
	checked ifNotNil: [
		buttonSet  defaultButton: buttonInput ].

	"create the actual button"
	button := UpdatingThreePhaseButtonMorph radioButton.
	button target: buttonInput;
		getSelector: #pressed;
		actionSelector: #toggle.
	buttonInput button: button.
	formatter addMorph: button.


