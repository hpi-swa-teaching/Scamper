document handling
getTitle: aHTMLDocument
	"Get title of HTMLDocument"
	
	| a b |
	
	a := document asString findString: '<title>'.
	b := document asString findString: '</title>'.
	^document asString copyFrom: (a+7) to: (b-1).


