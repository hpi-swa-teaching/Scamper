testing
test05ConvertRGBPercentFunctionToColor
		
	self assert: (Color fromHTMLString: 'rgb(100%, 100%, 100%)') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'rgb(100%,100%,100%)') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'rgb(0%, 0%, 0%)') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'rgb(100%, 0%, 35%)') equals: (Color r: 1 g: 0 b: 0.35).
	self assert: (Color fromHTMLString: 'rgb(300%, -10%, 35%)') equals: (Color r: 1 g: 0 b: 0.35).