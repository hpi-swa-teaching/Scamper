button text
buildUrlStringFrom: aUrl WithFormInput: aDictionary
	| urlWithArgs first |
	urlWithArgs := (aUrl downloadUrl) asText.
	urlWithArgs append: '?'.
	"build url with input"
	first := false.
	aDictionary keysAndValuesDo: [:k :valueCollection |
		first ifTrue: [ first := false ] ifFalse: [ urlWithArgs append: $& ].
		urlWithArgs append: (self makeQueryArg: valueCollection first key: k )].
	^urlWithArgs asString 
	
	