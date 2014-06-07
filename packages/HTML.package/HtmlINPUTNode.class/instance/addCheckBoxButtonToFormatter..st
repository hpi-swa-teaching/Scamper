rendering
addCheckBoxButtonToFormatter: formatter
	| name formData checked button buttonInput |

	"dig up relevant attributes"
	name := self attributes at: 'name' ifAbsent: [nil].
	name ifNil: [ ^self ].
	value := self attributes at: 'value' ifAbsent: [nil].
	value ifNil: [ ^value ].
	
	formData := self associatedForm.
	formData ifNil:  [ ^self ].

	checked := (self attributes at: 'checked' ifAbsent: [nil]) isNil not.

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


