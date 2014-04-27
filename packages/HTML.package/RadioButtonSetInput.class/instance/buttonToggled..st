input handling
buttonToggled: aButton
	"a button was toggled; turn all other buttons off"
	buttons do: [ :b |
		b == aButton ifFalse: [
			b pressed: false  ] ].