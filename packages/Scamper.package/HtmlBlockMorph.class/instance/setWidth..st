layout
setWidth: availableWidth

	| resolver absoluteWidth relativeWidth resultWidth |
	self node ifNil: [ ^ self ].
	
	resolver := CSSStyleResolver for: node.
	
	absoluteWidth := (resolver getStyle: #absoluteWidth) ifNil: [ #auto ].
	relativeWidth := (resolver getStyle: #relativeWidth) ifNil: [ 100 ].
	(absoluteWidth == #auto) 
		ifTrue: [ 
			"subtract margin, padding border-width here"
			resultWidth := availableWidth * relativeWidth / 100 ]
		ifFalse: [ resultWidth := absoluteWidth ].
	self computedWidth: resultWidth;
		suppressLayoutUpdates: true;
		updateSubmorphWidth: resultWidth;
		suppressLayoutUpdates: false;
		layoutChanged