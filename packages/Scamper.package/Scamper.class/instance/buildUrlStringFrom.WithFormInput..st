button text
buildUrlStringFrom: aUrl WithFormInput: aDictionary
	| urlWithArgs |
	urlWithArgs := (aUrl downloadUrl) asText.
	urlWithArgs append: '?'.
	"build url with input"
	aDictionary keysAndValuesDo: [:k :v |
		urlWithArgs append: (self makeQueryArg: (v asArray first) key: k ).
		urlWithArgs append: '&'].
	^urlWithArgs asString 
	
	