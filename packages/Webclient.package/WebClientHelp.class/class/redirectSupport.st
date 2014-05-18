pages
redirectSupport
	"This method was automatically generated. Edit it using:"
	"WebClientHelp edit: #redirectSupport"
	^HelpTopic
		title: 'Redirect Handling'
		contents: 
'WebClient handles http redirect requests (3xx) transparently. WebClient detects infinite redirect loops and gives up after a certain number of attempts, returning the redirect (3xx) response which caused it to give up. Users of WebClient will only see 3xx responses if WebClient has given up (i.e., returning a 3xx should be considered an error).

Redirect handling can be disabled by setting #allowRedirect property to the desired value. When disabled, WebClient will not attempt to perform any redirect handling.!' readStream nextChunkText