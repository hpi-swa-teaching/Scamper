initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'list-style-type' -> 'disc'.
		'margin' -> '1em 0'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)