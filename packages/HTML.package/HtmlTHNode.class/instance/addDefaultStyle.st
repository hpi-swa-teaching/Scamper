initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-weight' -> 'bold'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)