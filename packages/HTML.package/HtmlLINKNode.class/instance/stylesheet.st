accessing
stylesheet
	"Answer the value of stylesheet"

	| |

	(stylesheet isNil and: [href notNil])
	ifTrue:
	[
		| doc |
		doc := self loader documentForUrl: self href.
		stylesheet := CSSStyleSheet new parent: self; 
			start: 0; 
			content: doc content; 
			end: doc content size;
 			url: self href; 
			parseContents: (ReadStream on: doc content)
	].	
	^ stylesheet