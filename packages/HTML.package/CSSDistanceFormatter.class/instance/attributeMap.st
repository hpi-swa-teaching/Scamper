accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			self class attributePrefix			-> 	[ :aProperty :aContext | self readShorthandAttributesFrom: aProperty propertyString to: aContext ].
			self class attributePrefix, '-top'		-> 	[ :aProperty :aContext | self put: aProperty propertyString at: 'top' to: aContext ].
			self class attributePrefix, '-right' 	->	[ :aProperty :aContext | self put: aProperty propertyString at: 'right' to: aContext ].
			self class attributePrefix, '-bottom' 	->	[ :aProperty :aContext | self put: aProperty propertyString at: 'bottom' to: aContext ].
			self class attributePrefix, '-left' 		-> 	[ :aProperty :aContext | self put: aProperty propertyString at: 'left' to: aContext ]
		}]