testing
test01ConvertNameToColor
	| colorLists |
	colorLists := OrderedCollection new.
	colorLists
		add: Color htmlColors1;
		add: Color htmlColors2;
		add: Color htmlColors3;
		add: Color htmlColors4.
	colorLists do: [:colorList | 
		colorList keysAndValuesDo: [ :colorName :rgb |
			self assert: (Color fromHTMLString: colorName) equals: (Color r: rgb first / 255 g: rgb second / 255 b: rgb third / 255).
		].
	].