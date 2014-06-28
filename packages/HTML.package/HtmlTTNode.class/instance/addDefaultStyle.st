accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-style' -> 'italic'.
		'font-family' -> 'Accushi'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)