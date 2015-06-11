*WebClient-HTTP-override
httpPostMultipart: url args: argsDict accept: mimeType request: requestString
	" do multipart/form-data encoding rather than x-www-urlencoded "

	| mimeBorder argsStream |
	mimeBorder := '----squeak-georgia-tech-', Time millisecondClockValue printString, '-csl-cool-stuff-----'.
	"encode the arguments dictionary"
	argsStream := WriteStream on: String new.
	argsDict associationsDo: [:assoc |
		assoc value do: [ :value | | fieldValue |
		"print the boundary"
		argsStream nextPutAll: '--', mimeBorder; crlf.
		" check if it's a non-text field "
		argsStream nextPutAll: 'Content-disposition: multipart/form-data; name="', assoc key, '"'.
		(value isKindOf: MIMEDocument)
			ifFalse: [fieldValue := value]
			ifTrue: [
				argsStream
					nextPutAll: ' filename="'; nextPutAll: value url pathForFile; nextPut: $"; crlf;
					nextPutAll: 'Content-Type: '; nextPutAll: value contentType.
				fieldValue := (value content
					ifNil: [(FileStream fileNamed: value url pathForFile) contentsOfEntireFile]
					ifNotNil: [value content]) asString].
" Transcript show: 'field=', key, '; value=', fieldValue; cr. "
		argsStream crlf; crlf; nextPutAll: fieldValue; crlf
	]].
	argsStream nextPutAll: '--', mimeBorder, '--'.

	^self httpPost: url 
			content: argsStream contents
			type:  'multipart/form-data; boundary=', mimeBorder
			accept: mimeType 
			request: requestString
