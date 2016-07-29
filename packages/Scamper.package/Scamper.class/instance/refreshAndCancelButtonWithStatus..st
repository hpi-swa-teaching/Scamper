window definition
refreshAndCancelButtonWithStatus: browserState
	"Create and return a simple button with Scamper as the target."

	| iconAction iconForm |
	super initialize.
	"browserState := #status."
	
	(browserState asString isEmpty) ifTrue: [
		iconForm := self iconRefresh.
		iconAction := '#reload'.
		].
	
	(browserState asString = 'sittin') ifTrue: [
		iconForm := self iconRefresh.
		iconAction := '#reload'. 
		].
	
	^ IconicButton new
		target: self;
		labelGraphic: self iconRefresh;
		color: Color transparent;
		extent: 25 @ 25;
		borderWidth: 0;
		actionSelector: #reload;
		actWhen: #buttonUp;
		yourself.
		

