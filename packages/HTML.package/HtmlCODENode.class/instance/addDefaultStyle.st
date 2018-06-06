accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'Courier New'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)