layout
setWidth: availableWidth

	| resolver absoluteWidth relativeWidth resultWidth availableContentWidth contentWidth useableWidth |
	self node ifNil: [ ^ self ].
	
	resolver := CSSStyleResolver for: node.
	
	absoluteWidth := (resolver getStyle: #absoluteWidth) ifNil: [ #auto ].
	relativeWidth := (resolver getStyle: #relativeWidth) ifNil: [ 100 ].
	useableWidth  := availableWidth - self layoutStyles extraMarginWidth.
	(absoluteWidth == #auto) 
		ifTrue: [ 
			
			availableContentWidth := availableWidth - self layoutStyles extraWidth.
			contentWidth := availableContentWidth * relativeWidth / 100.
			resultWidth := useableWidth * relativeWidth / 100 ]
		ifFalse: [ 
			contentWidth := absoluteWidth.
			resultWidth := absoluteWidth+ self layoutStyles extraWidth].
	self computedWidth: resultWidth;
		suppressLayoutUpdates: true;
		updateSubmorphWidth: contentWidth;
		suppressLayoutUpdates: false;
		layoutChanged