accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-family' -> 'Unifont'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)