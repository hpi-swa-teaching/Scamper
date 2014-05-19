accessing
canonicalize: aStringOrUrl

	| href |

	href := aStringOrUrl asString.
	^((href beginsWith: 'http:') or: [(href beginsWith: 'https:') or:[(href beginsWith: 'ftp:') or: [href beginsWith: 'file:']]]) 
	ifFalse:
	[
		(Url combine: url asString withRelative: href).
	]
	ifTrue: [href].