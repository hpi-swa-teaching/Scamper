accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-style' -> 'italic'.
		'font-family' -> 'Courier New'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)