accessing
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'text-align' -> 'center'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)