accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'Georgia'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)