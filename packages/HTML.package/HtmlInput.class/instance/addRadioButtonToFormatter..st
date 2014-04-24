formatting
addRadioButtonToFormatter: formatter
	| name formData checked buttonSet button buttonInput |

	"dig up relevant attributes"
	name := self getAttribute: 'name'.
	name ifNil: [ ^self ].
	value := self getAttribute: 'value'.
	value ifNil: [ ^value ].
	
	formData := formatter currentFormData.
	formData ifNil:  [ ^self ].

	checked := self getAttribute: 'checked'.


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


