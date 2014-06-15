initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-size' -> 'larger'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)