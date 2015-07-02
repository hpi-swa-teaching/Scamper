accessing
attributeMap

	^ attributeMap ifNil: [ Dictionary newFrom: {
			'font' 			-> 	[ :aProperty :aContext | self readFontAttribute: aProperty propertyString to: aContext ].
			'font-style' 		-> 	[ :aProperty :aContext | self readFontStyleAttribute: aProperty propertyString to: aContext ].
			'font-weight' 	-> 	[ :aProperty :aContext | self readFontWeightAttribute: aProperty propertyString to: aContext ].
			'font-size' 		-> 	[ :aProperty :aContext | self readFontSizeAttribute: aProperty propertyString to: aContext ].
			'font-family' 	-> 	[ :aProperty :aContext | self readFontFamilyAttribute: aProperty propertyString to: aContext ]
		}]