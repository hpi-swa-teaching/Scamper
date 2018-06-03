initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'table-cell'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)