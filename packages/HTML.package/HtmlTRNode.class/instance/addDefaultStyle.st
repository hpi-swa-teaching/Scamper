initialize-release
addDefaultStyle
	| styles |
	styles := Dictionary newFrom: {
		'display' -> 'table-row'.
	}.
	self addStyle: (CSSStyleRule fromDictionary: styles)