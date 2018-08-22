accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'Georgia'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)