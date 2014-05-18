comparing
= anObject

	^anObject class == self class and: 
		[anObject attribute = self attribute and: 
			[anObject value = self value]
		]