window definition
simpleIconicButtonNamed: buttonLabel action: selector text: balloonText withIcon: buttonIcon
	"Create and return a simple button with Scamper as the target."

	^IconicButton new
		label: buttonLabel;
		target: self;
		color: Color transparent;
		borderColor: Color black;
		actionSelector: selector;
		actWhen: #buttonUp;
		setBalloonText: balloonText;
		yourself
