initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-weight' -> 'bold'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)