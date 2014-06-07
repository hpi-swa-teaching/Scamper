initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'list-style-type' -> 'decimal'.
		'margin' -> '1em 0'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)