initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-size' -> '1.00em'.
		'font-weight' -> 'bold'.
		'margin' -> '1.33em 0'
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)