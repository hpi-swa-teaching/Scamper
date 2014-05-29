testing
test01ConvertNameToColor
	| colorLists |
	colorLists := OrderedCollection new.
	colorLists
		add: Color htmlColors1;
		add: Color htmlColors2.
	colorLists do: [:colorList | 
		colorList keysAndValuesDo: [ :colorName :rgb |
			self assert: (Color fromHTMLString: colorName) equals: (Color r: rgb first / 255 g: rgb second / 255 b: rgb third / 255).
		].
	].
	self assert: (Color r: 1 g: 0 b: 0) equals: (Color fromHTMLString: 'Red').