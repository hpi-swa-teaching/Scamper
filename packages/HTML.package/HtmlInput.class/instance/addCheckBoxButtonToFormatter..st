formatting
addCheckBoxButtonToFormatter: formatter
	| name formData checked button buttonInput |

	"dig up relevant attributes"
	name := self getAttribute: 'name'.
	name ifNil: [ ^self ].
	value := self getAttribute: 'value'.
	value ifNil: [ ^value ].
	
	formData := formatter currentFormData.
	formData ifNil:  [ ^self ].

	checked := (self getAttribute: 'checked') isNil not.

	"set up the form input"
	buttonInput := ToggleButtonInput name: name value: value checkedByDefault: checked.
	formData addInput: buttonInput.

	"create the actual button"
	button := UpdatingThreePhaseButtonMorph checkBox.
	button target: buttonInput;
		getSelector: #pressed;
		actionSelector: #toggle.
	buttonInput button: button.
	formatter addMorph: button.


