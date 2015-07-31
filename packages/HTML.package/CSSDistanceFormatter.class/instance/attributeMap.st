accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			self class attributePrefix, self class attributeSuffix 				-> 	[ :aProperty :aContext | self readShorthandAttributesFrom: aProperty propertyString to: aContext ].
			self class attributePrefix, '-top', self class attributeSuffix		-> 	[ :aProperty :aContext | self put: aProperty propertyString at: 'top', self class attributeSuffix to: aContext ].
			self class attributePrefix, '-right', self class attributeSuffix 		->	[ :aProperty :aContext | self put: aProperty propertyString at: 'right', self class attributeSuffix to: aContext ].
			self class attributePrefix, '-bottom', self class attributeSuffix	->	[ :aProperty :aContext | self put: aProperty propertyString at: 'bottom', self class attributeSuffix to: aContext ].
			self class attributePrefix, '-left'	, self class attributeSuffix		-> 	[ :aProperty :aContext | self put: aProperty propertyString at: 'left', self class attributeSuffix to: aContext ]
		}]