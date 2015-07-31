accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'color' 			-> 	[ :aProperty :aContext |  self readColorFrom: aProperty to: aContext ]
		}]