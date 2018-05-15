changing page
downloadFromUrlAsync: aUrl withMethod: method andInputs: inputs andEncoding: encoding
	"Submit the given form with the provided inputs, url, method, and encoding"

	| promise downloadWork client resp urlWithArgs|
	promise := Promise new.
	
	downloadWork := [	| newSource |
		newSource := method asLowercase = 'get'
			ifTrue: [
					urlWithArgs := (aUrl downloadUrl), '?'.
					"build url with input"
					inputs keysAndValuesDo: [:k :v |
						urlWithArgs := (((urlWithArgs , k ) , '='), v asArray first).
						urlWithArgs := urlWithArgs , '&'.
						].
					client := WebClient new.
					client userAgent: Scamper userAgent.
					resp := client httpGet: urlWithArgs.
					resp content; close ]
			ifFalse:
				[ encoding = MIMEDocument contentTypeMultipart
					ifTrue: [ aUrl postMultipartFormArgs: inputs ]
					ifFalse: [ aUrl postFormArgs: inputs ] ].

		downloadingProcess := nil.
		promise resolveWith: newSource ].
	
	downloadingProcess := downloadWork forkAt: Processor userBackgroundPriority.
	
	^ promise
		