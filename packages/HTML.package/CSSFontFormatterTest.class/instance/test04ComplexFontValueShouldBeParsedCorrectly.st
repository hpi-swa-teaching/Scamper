testing
test04ComplexFontValueShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font';
				propertyString: 'bold xx-large/180% Verdana';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: false equals: (result at: #italic).
	self assert: true equals: (result at: #bold).
	self assert: ((TextStyle defaultFont pointSize * 3) asInteger) equals: (result at: #size).
	self assert: (TextStyle named: 'Verdana') equals: (result at: #family).