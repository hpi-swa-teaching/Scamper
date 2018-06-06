initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'font-weight' -> 'bold'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)