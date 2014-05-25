access
labelString
	"return the title of the current page, or nil if there is none"

	document isNil
		ifTrue: [ ^ 'Scamper' ]
		ifFalse: [ ^ 'Scamper: ' , ((self titleOf: document) ifNil: [ '(untitled)' translated ]) ]