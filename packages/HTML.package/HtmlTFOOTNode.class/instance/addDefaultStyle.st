initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'block'.
		'font-style' -> 'italic'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)