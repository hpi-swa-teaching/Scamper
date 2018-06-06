initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'table-cell'.
		'font-weight' -> 'bold'.
	}.
	self addStyle: (CSSDefaultStyleRule fromDictionary: styles)