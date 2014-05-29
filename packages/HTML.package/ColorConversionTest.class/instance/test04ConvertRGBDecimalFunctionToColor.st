testing
test04ConvertRGBDecimalFunctionToColor
		
	self assert: (Color fromHTMLString: 'rgb(255, 255, 255)') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'rgb(255,255,255)') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'rgb(0, 0, 0)') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'rgb(255, 0, 136)') equals: (Color r: 1 g: 0 b: 0.534).
	self assert: (Color fromHTMLString: 'rgb(300, -10, 136)') equals: (Color r: 1 g: 0 b: 0.534).