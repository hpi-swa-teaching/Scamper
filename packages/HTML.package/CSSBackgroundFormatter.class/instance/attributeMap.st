accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'background' 			-> 	[ :aProperty :aContext | self readBackgroundAttribute: aProperty propertyString of: aProperty to: aContext ].
			'background-image'		-> 	[ :aProperty :aContext | self readBackgroundImageAttribute: aProperty propertyString of: aProperty to: aContext].
			'background-color' 		->	[ :aProperty :aContext | self readBackgroundColorAttribute: aProperty propertyString to: aContext ].
			'background-repeat' 	->	[ :aProperty :aContext | self readBackgroundRepeatAttribute: aProperty propertyString to: aContext ].
			'background-position'	-> 	[ :aProperty :aContext | self readBackgroundPositionAttribute: aProperty propertyString to: aContext ]
		}]