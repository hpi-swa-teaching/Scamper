class initialization
fromUrl: aStringOrUrl

	| doc url |

	url := aStringOrUrl asString.

	doc := HTTPSocket httpGetDocument: url args: nil accept: 'text/css' request: ''.
	^doc isString ifFalse: "life is good"
	[
		self new content: doc content; start: 0; end: doc content size; url: url		
	]
	ifTrue:
	[
		nil
	]

