initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'text-decoration' -> 'underline'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)