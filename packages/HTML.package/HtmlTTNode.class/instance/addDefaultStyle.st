accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'TrebuchetMS'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)