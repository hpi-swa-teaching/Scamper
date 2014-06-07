initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'text-decoration' -> 'underline'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)