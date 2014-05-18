formatting commands
readFontAttributesFrom: styles
	| fontAttribs |
	fontAttribs := Dictionary new.
	styles do: [ :style | 
		style properties do: [ :prop |
			prop propertyName = 'font'
				ifTrue: [ self readFontAttribute: prop propertyString to: fontAttribs ].
			prop propertyName = 'font-style'
				ifTrue: [ self readFontStyleAttribute: prop propertyString to: fontAttribs ].
			prop propertyName = 'font-weight'
				ifTrue: [ self readFontWeightAttribute: prop propertyString to: fontAttribs ] ] ].
		
	^ fontAttribs