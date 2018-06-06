initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'table'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)