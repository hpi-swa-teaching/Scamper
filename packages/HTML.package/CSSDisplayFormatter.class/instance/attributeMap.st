accessing
attributeMap

	^ attributeMap ifNil: [ Dictionary newFrom: {
			'display'	-> 	[ :aProperty :aContext |  self readDisplayFrom: aProperty to: aContext ]
		}]