class initialization
fromUrl: aStringOrUrl parent: aDOMNode

	| doc href url |

	href := aStringOrUrl asString.
	((href beginsWith: 'http:') or: [(href beginsWith: 'https:') or:[href beginsWith: 'ftp:']]) 
	ifFalse:
	[
		url := (Url combine: aDOMNode document responseUrl asString withRelative: href).
	]
	ifTrue: [url := href].

	doc := HTTPSocket httpGetDocument: url args: nil accept: 'text/css' request: ''.
	^doc isString ifFalse: "life is good"
	[
		self new 
			content: doc content; 
			start: 0; end: doc content size; 
			parent: aDOMNode; 
			url: url;
			parseContents: (ReadStream on: doc content)		
	]
	ifTrue:
	[
		nil
	]

