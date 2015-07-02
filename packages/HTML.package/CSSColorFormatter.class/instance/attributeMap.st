accessing
attributeMap

	^ attributeMap ifNil: [ Dictionary newFrom: {
			'color' 			-> 	[ :aProperty :aContext |  self readColorFrom: aProperty to: aContext ]
		}]