running
test05BackgroundShouldBeParsedCorrectly
	| property result |
	result := Dictionary new.
	property := CSSProperty new
				propertyName: 'background';
				propertyString: 'blue url(/bar.png) 20px 30px/40px 10px no-repeat';
				yourself.
	self backgroundFormatter parseTextAttributesFrom: property into: result.
	
	self assert: Color blue equals: (result at: #backgroundColor);
		assert: '/bar.png' equals: (result at: #backgroundImage);
		assert: #noRepeat equals: (result at: #backgroundRepeat);
		assert: 20@30 equals: (result at: #backgroundPosition)