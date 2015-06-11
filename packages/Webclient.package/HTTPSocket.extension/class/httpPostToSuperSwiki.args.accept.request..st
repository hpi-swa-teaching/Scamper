*WebClient-HTTP-override
httpPostToSuperSwiki: url args: argsDict accept: mimeType request: requestString

	| mimeBorder argString |
	mimeBorder := '---------SuperSwiki',Time millisecondClockValue printString,'-----'.
	argString := String streamContents: [ :strm |
		strm nextPutAll: mimeBorder; crlf.
		argsDict associationsDo: [:assoc |
			assoc value do: [ :value |
				strm
					nextPutAll: 'Content-disposition: form-data; name="', assoc key, '"'; crlf; crlf;
					nextPutAll: value; crlf; crlf;
					nextPutAll: mimeBorder; crlf.
			]
		].
	].

	^self httpPost: url 
			content: argString 
			type:  'multipart/form-data; boundary=', mimeBorder
			accept: mimeType 
			request: requestString
