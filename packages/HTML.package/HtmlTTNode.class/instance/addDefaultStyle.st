accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'Accushi'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)