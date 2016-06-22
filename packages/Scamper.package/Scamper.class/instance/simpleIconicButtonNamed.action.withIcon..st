window definition
simpleIconicButtonNamed: buttonLabel action: selector withIcon: iconForm
	"Create and return a simple button with Scamper as the target."

	^IconicButton new
		"label: buttonLabel;"
		target: self;
		labelGraphic: iconForm;
		color: Color transparent;
		borderColor: Color black;
		actionSelector: selector;
		actWhen: #buttonUp;
		yourself
