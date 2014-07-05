accessing
attributeMap

	^ attributeMap ifNil:
		[ Dictionary newFrom: {
			'text-decoration' -> [ :prop :fontAttribs | 
					self readTextDecorationAttribute: prop propertyString to: fontAttribs ]
		}]