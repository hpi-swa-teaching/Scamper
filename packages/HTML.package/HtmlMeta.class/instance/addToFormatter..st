formatting
addToFormatter: formatter
	| httpEquiv |
	httpEquiv := self getAttribute: 'http-equiv'.
	httpEquiv ifNil: [ ^self ].
	httpEquiv asLowercase = 'refresh' ifTrue: [
		formatter addString: '{refresh: ', (self getAttribute:  'content' default: ''), '}' ].