window definition
simpleButtonNamed: buttonLabel action: selector text: balloonText
	"Create and return a simple button with Scamper as the target."

	^SimpleButtonMorph new
		label: buttonLabel;
		target: self;
		color: Color transparent;
		cornerStyle: #rounded;
		borderColor: Color black;
		actionSelector: selector;
		actWhen: #buttonUp;
		setBalloonText: balloonText;
		yourself
