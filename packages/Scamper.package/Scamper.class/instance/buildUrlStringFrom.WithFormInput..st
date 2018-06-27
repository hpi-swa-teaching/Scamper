button text
buildUrlStringFrom: aUrl WithFormInput: aDictionary
	| urlWithArgs |
	urlWithArgs := (aUrl downloadUrl) asText.
	urlWithArgs append: '?'.
	"build url with input"
	aDictionary keysAndValuesDo: [:k :v |
		urlWithArgs append: (self makeQueryArg: v key: k ).
		urlWithArgs append: '&'].
	^urlWithArgs asString 
	
	