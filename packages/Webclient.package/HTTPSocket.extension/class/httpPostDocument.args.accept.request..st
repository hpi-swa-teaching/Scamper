*WebClient-HTTP-override
httpPostDocument: url  args: args accept: mimeType request: requestString
	"like httpGET, except it does a POST instead of a GET.  POST allows data to be uploaded"

	| argString  |
	args ifNotNil: [
		argString := self argString: args.
		argString first = $? ifTrue: [argString := argString allButFirst].
	].

	^self httpPost: url 
			content: argString 
			type: 'application/x-www-form-urlencoded' 
			accept: mimeType 
			request: requestString