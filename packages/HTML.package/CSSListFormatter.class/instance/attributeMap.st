accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'list-style-type' 			-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #'list-style-type' to: aContext ]
		}]