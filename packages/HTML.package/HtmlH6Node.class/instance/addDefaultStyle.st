initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-size' -> '0.67em'.
		'font-weight' -> 'bold'.
		'margin' -> '2.33em 0'
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)