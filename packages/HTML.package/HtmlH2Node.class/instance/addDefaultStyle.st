as yet unclassified
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-size' -> '1.5em'.
		'font-weight' -> 'bold'.
		'margin' -> '.83em 0'
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)