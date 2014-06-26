initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-style' -> 'italic'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)