accessing
attributeMap

	^ attributeMap ifNil: [ attributeMap := Dictionary newFrom: {
			'text-decoration' 	-> 	[ :prop :fontAttribs | self readTextDecorationAttribute: prop propertyString to: fontAttribs ].
			'text-align' 			-> 	[ :prop :fontAttribs | self readTextAlignAttribute: prop propertyString to: fontAttribs ]
		}]