accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'position'			-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #position to: aContext ].
			'top'				-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #top to: aContext ].
			'right'				-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #right to: aContext ].
			'bottom'			-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #bottom to: aContext ].
			'left'				-> 	[ :aProperty :aContext | self put: aProperty propertyString at: #left to: aContext ]
		}]