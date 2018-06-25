initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-size' -> '1.17em'.
		'font-weight' -> 'bold'.
		'margin' -> '1em 0'
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)