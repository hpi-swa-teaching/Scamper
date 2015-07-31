accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'display'	-> 	[ :aProperty :aContext |  self readDisplayFrom: aProperty to: aContext ]
		}]