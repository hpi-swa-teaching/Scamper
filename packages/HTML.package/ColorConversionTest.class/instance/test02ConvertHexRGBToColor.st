testing
test02ConvertHexRGBToColor
		
	self assert: (Color fromHTMLString: '#fff') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: '#FFF') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: '#000') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: '#f08') equals: (Color r: 1 g: 0 b: 0.534).
	self assert: (Color fromHTMLString: '#abcdef') equals: (Color r: 171/255 g: 205/255 b:239/255)