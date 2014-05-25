as yet unclassified
test01ConvertNameToColor
		
	self assert: (Color fromHTMLString: 'white') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'black') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'cyan') equals: (Color r: 0 g: 1 b: 1).