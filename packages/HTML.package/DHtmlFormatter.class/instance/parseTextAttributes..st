formatting commands
parseTextAttributes: styles
	| attribs |
	attribs := OrderedCollection new.
	styles do: [ :style | 
		style properties do: [ :prop | 
			(prop propertyName = 'font-style' 
				and: [ prop propertyString = 'italic'])
				ifTrue: [ attribs add: TextEmphasis italic ] ] ].
	^ attribs