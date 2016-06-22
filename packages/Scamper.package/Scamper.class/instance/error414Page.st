browser urls
error414Page
	"return a string of HTML about status 414"
	^self errorPageTemplate format:{
	'Error 414' translated.
	'An error occured: Request-URL Too Long.' translated.
	}