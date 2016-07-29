window definition
simpleIconicButtonNamed: buttonLabel action: selector withIcon: iconForm andVerticalPosition: aVerticalPosition
	"Create and return a simple button with Scamper as the target."

	
	^IconicButton new
		"label: buttonLabel;"
		target: self;
		labelGraphic: iconForm;
		color: Color transparent;
		borderWidth: 0;
		extent: 35@35;
		position: (50@50);
		actionSelector: selector;
		actWhen: #buttonUp;
		yourself
