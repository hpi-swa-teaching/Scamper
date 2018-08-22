forms
endForm
	formDatas size > 0 ifTrue: [ 
		formDatas removeLast. ]
	ifFalse: [ self halt: 'HtmlFormatter: ended more forms that started!?' ].
	self ensureNewlines: 1.