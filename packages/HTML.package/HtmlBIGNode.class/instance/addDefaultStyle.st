initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-size' -> 'larger'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)