running
test02BackgroundImageShouldBeParsedCorrectly
	| property result |
	result := Dictionary new.
	property := CSSProperty new
				propertyName: 'background-image';
				propertyString: 'url(/foo.png)';
				yourself.
	self backgroundFormatter parseTextAttributesFrom: property into: result.
	self assert: '/foo.png' equals: (result at: #backgroundImage).