accessing
attributeMap

	^ attributeMap ifNil:
		[ Dictionary newFrom: {
			'font' -> [ :prop :fontAttribs | self readFontAttribute: prop propertyString to: fontAttribs ].
			'font-style' -> [ :prop :fontAttribs | self readFontStyleAttribute: prop propertyString to: fontAttribs ].
			'font-weight' -> [ :prop :fontAttribs | self readFontWeightAttribute: prop propertyString to: fontAttribs ].
			'font-size' -> [ :prop :fontAttribs | self readFontSizeAttribute: prop propertyString to: fontAttribs ]
		}]