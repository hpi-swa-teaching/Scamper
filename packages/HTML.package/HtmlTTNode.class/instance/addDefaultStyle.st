accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'TrebuchetMS'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)