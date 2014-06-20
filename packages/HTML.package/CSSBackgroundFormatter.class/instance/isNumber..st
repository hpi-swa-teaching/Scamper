parsing
isNumber: aString
	| firstChar |
	aString ifEmpty: [ ^ false ].
	firstChar := aString first.
	(firstChar = $- and: [ aString size > 1]) ifTrue: [ firstChar := aString second ].
	^ {$0. $1. $2. $3. $4. $5. $6. $7. $8. $9} includes: firstChar