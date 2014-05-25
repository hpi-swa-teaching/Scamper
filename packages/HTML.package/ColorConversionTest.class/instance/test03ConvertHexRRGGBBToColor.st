testing
test03ConvertHexRRGGBBToColor
		
	self assert: (Color fromHTMLString: '#ffffff') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: '#FFFFFF') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: '#000000') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: '#ff0088') equals: (Color r: 1 g: 0 b: 0.534).
	self assert: (Color fromHTMLString: '#abcdef') equals: (Color r: 0.671 g: 0.804 b: 0.937).