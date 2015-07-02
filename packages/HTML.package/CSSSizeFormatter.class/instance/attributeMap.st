accessing
attributeMap

	^ attributeMap ifNil: [ Dictionary newFrom: {
			'height'		-> 	[ :aProperty :aContext | self put: aProperty propertyString asInteger at: #height to: aContext ].
			'width'		-> 	[ :aProperty :aContext | self readWidthFrom: aProperty to: aContext ]
		}]