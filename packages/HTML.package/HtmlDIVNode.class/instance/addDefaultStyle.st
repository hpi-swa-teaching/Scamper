as yet unclassified
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)