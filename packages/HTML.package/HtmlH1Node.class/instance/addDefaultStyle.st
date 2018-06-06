initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-size' -> '2em'.
		'font-weight' -> 'bold'.
		'margin' -> '.67em 0'
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)