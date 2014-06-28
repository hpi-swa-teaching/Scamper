testing
test05FontFamilyShouldBeParsedCorrectly
	| prop result |
	result := Dictionary new.
	prop := CSSProperty new
				propertyName: 'font-family';
				propertyString: 'nonexistant, serif, sans-serif';
				yourself.
	self fontFormatter parseTextAttributesFrom: prop into: result.
	self assert: (TextStyle named: 'NimbusRomanNo9L') equals: (result at: #family).