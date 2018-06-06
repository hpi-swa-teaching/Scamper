accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-style' -> 'italic'.
		'font-family' -> 'Times'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)