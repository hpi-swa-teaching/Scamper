layout
setWidth: availableWidth

	| resolver absoluteWidth relativeWidth resultWidth availableContentWidth contentWidth |
	self node ifNil: [ ^ self ].
	
	resolver := CSSStyleResolver for: node.
	
	absoluteWidth := (resolver getStyle: #absoluteWidth) ifNil: [ #auto ].
	relativeWidth := (resolver getStyle: #relativeWidth) ifNil: [ 100 ].
	(absoluteWidth == #auto) 
		ifTrue: [ 
			"subtract margin, padding border-width here"
			availableContentWidth := availableWidth - self layoutStyles extraWidth.
			contentWidth := availableContentWidth * relativeWidth / 100.
			resultWidth := availableWidth * relativeWidth / 100 ]
		ifFalse: [ 
			contentWidth := absoluteWidth - self layoutStyles extraWidth.
			resultWidth := absoluteWidth].
	self computedWidth: resultWidth;
		suppressLayoutUpdates: true;
		updateSubmorphWidth: contentWidth;
		suppressLayoutUpdates: false;
		layoutChanged