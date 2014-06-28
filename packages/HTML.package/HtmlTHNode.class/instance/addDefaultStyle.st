initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'table-cell'.
		'font-weight' -> 'bold'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)