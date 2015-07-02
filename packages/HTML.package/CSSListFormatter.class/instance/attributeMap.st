accessing
attributeMap

	^ attributeMap ifNil: [ Dictionary newFrom: {
			'list-style-type' 			-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #'list-style-type' to: aContext ]
		}]