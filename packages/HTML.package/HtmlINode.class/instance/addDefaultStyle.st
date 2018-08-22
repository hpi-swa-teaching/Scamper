initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-style' -> 'italic'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)