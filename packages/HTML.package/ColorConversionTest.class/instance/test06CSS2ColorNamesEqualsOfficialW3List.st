testing
test06CSS2ColorNamesEqualsOfficialW3List
		
	self assert: (Color fromHTMLString: 'aqua') equals: (Color r: 0 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'black') equals: (Color r: 0 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'blue') equals: (Color r: 0 g: 0 b: 1).
	self assert: (Color fromHTMLString: 'fuchsia') equals: (Color r: 1 g: 0 b: 1).
	self assert: (Color fromHTMLString: 'gray') equals: (Color r: 0.502 g: 0.502 b: 0.502).
	self assert: (Color fromHTMLString: 'green') equals: (Color r: 0 g: 0.502 b: 0).
	self assert: (Color fromHTMLString: 'lime') equals: (Color r: 0 g: 1 b: 0).
	self assert: (Color fromHTMLString: 'maroon') equals: (Color r: 0.502 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'navy') equals: (Color r: 0 g: 0 b: 0.502).
	self assert: (Color fromHTMLString: 'olive') equals: (Color r: 0.502 g: 0.502 b: 0).
	self assert: (Color fromHTMLString: 'orange') equals: (Color r: 1 g: 0.647 b: 0).
	self assert: (Color fromHTMLString: 'purple') equals: (Color r: 0.502 g: 0 b: 0.502).
	self assert: (Color fromHTMLString: 'red') equals: (Color r: 1 g: 0 b: 0).
	self assert: (Color fromHTMLString: 'silver') equals: (Color r: 0.753 g: 0.753 b: 0.753).
	self assert: (Color fromHTMLString: 'teal') equals: (Color r: 0 g: 0.502 b: 0.502).
	self assert: (Color fromHTMLString: 'white') equals: (Color r: 1 g: 1 b: 1).
	self assert: (Color fromHTMLString: 'yellow') equals: (Color r: 1 g: 1 b: 0).