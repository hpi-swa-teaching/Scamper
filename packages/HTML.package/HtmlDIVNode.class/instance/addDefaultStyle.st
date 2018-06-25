initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)